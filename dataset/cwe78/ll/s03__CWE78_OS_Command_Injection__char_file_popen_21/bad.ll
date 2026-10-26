; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s03/CWE78_OS_Command_Injection__char_file_popen_21.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s03/CWE78_OS_Command_Injection__char_file_popen_21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@badStatic = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__char_file_popen_21_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %4 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 0
  store i8 108, ptr %4, align 16
  %5 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 1
  store i8 115, ptr %5, align 1
  %6 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 2
  store i8 32, ptr %6, align 2
  %7 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %7, ptr %1, align 8
  store i32 1, ptr @badStatic, align 4
  %8 = load ptr, ptr %1, align 8
  %9 = call ptr @badSource(ptr noundef %8)
  store ptr %9, ptr %1, align 8
  %10 = load ptr, ptr %1, align 8
  %11 = call noalias ptr @popen(ptr noundef %10, ptr noundef @.str)
  store ptr %11, ptr %3, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load ptr, ptr %3, align 8
  %16 = call i32 @pclose(ptr noundef %15)
  br label %17

17:                                               ; preds = %14, %0
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @badSource(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %5 = load i32, ptr @badStatic, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %9 = call i64 @strlen(ptr noundef %8) #4
  store i64 %9, ptr %3, align 8
  %10 = load i64, ptr %3, align 8
  %11 = sub i64 100, %10
  %12 = icmp ugt i64 %11, 1
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = call noalias ptr @fopen(ptr noundef @.str.1, ptr noundef @.str.2)
  store ptr %14, ptr %4, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load ptr, ptr %2, align 8
  %19 = load i64, ptr %3, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 %19
  %21 = load i64, ptr %3, align 8
  %22 = sub i64 100, %21
  %23 = trunc i64 %22 to i32
  %24 = load ptr, ptr %4, align 8
  %25 = call ptr @fgets(ptr noundef %20, i32 noundef %23, ptr noundef %24)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  call void @printLine(ptr noundef @.str.3)
  %28 = load ptr, ptr %2, align 8
  %29 = load i64, ptr %3, align 8
  %30 = getelementptr inbounds nuw i8, ptr %28, i64 %29
  store i8 0, ptr %30, align 1
  br label %31

31:                                               ; preds = %27, %17
  %32 = load ptr, ptr %4, align 8
  %33 = call i32 @fclose(ptr noundef %32)
  br label %34

34:                                               ; preds = %31, %13
  br label %35

35:                                               ; preds = %34, %7
  br label %36

36:                                               ; preds = %35, %1
  %37 = load ptr, ptr %2, align 8
  ret ptr %37
}

declare noalias ptr @popen(ptr noundef, ptr noundef) #2

declare i32 @pclose(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #2

declare void @printLine(ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
