; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s07/CWE78_OS_Command_Injection__wchar_t_file_execl_06.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s07/CWE78_OS_Command_Injection__wchar_t_file_execl_06.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1
@.str.3 = private unnamed_addr constant [8 x i32] [i32 47, i32 98, i32 105, i32 110, i32 47, i32 115, i32 104, i32 0], align 4
@.str.4 = private unnamed_addr constant [3 x i32] [i32 45, i32 99, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__wchar_t_file_execl_06_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %5 = getelementptr inbounds [100 x i32], ptr %2, i32 0, i32 0
  store i32 108, ptr %5, align 16
  %6 = getelementptr inbounds [100 x i32], ptr %2, i32 0, i32 1
  store i32 115, ptr %6, align 4
  %7 = getelementptr inbounds [100 x i32], ptr %2, i32 0, i32 2
  store i32 32, ptr %7, align 8
  %8 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %8, ptr %1, align 8
  %9 = load ptr, ptr %1, align 8
  %10 = call i64 @wcslen(ptr noundef %9) #5
  store i64 %10, ptr %3, align 8
  %11 = load i64, ptr %3, align 8
  %12 = sub i64 100, %11
  %13 = icmp ugt i64 %12, 1
  br i1 %13, label %14, label %36

14:                                               ; preds = %0
  %15 = call noalias ptr @fopen(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %15, ptr %4, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load ptr, ptr %1, align 8
  %20 = load i64, ptr %3, align 8
  %21 = getelementptr inbounds nuw i32, ptr %19, i64 %20
  %22 = load i64, ptr %3, align 8
  %23 = sub i64 100, %22
  %24 = trunc i64 %23 to i32
  %25 = load ptr, ptr %4, align 8
  %26 = call ptr @fgetws(ptr noundef %21, i32 noundef %24, ptr noundef %25)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  call void @printLine(ptr noundef @.str.2)
  %29 = load ptr, ptr %1, align 8
  %30 = load i64, ptr %3, align 8
  %31 = getelementptr inbounds nuw i32, ptr %29, i64 %30
  store i32 0, ptr %31, align 4
  br label %32

32:                                               ; preds = %28, %18
  %33 = load ptr, ptr %4, align 8
  %34 = call i32 @fclose(ptr noundef %33)
  br label %35

35:                                               ; preds = %32, %14
  br label %36

36:                                               ; preds = %35, %0
  %37 = load ptr, ptr %1, align 8
  %38 = call i32 (ptr, ptr, ...) @execl(ptr noundef @.str.3, ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef %37, ptr noundef null) #6
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #2

declare noalias ptr @fopen(ptr noundef, ptr noundef) #3

declare ptr @fgetws(ptr noundef, i32 noundef, ptr noundef) #3

declare void @printLine(ptr noundef) #3

declare i32 @fclose(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @execl(ptr noundef, ptr noundef, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
