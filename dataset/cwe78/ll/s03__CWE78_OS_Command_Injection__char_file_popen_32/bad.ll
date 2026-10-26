; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s03/CWE78_OS_Command_Injection__char_file_popen_32.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s03/CWE78_OS_Command_Injection__char_file_popen_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__char_file_popen_32_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %1, ptr %2, align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 100, i1 false)
  %10 = getelementptr inbounds [100 x i8], ptr %4, i32 0, i32 0
  store i8 108, ptr %10, align 16
  %11 = getelementptr inbounds [100 x i8], ptr %4, i32 0, i32 1
  store i8 115, ptr %11, align 1
  %12 = getelementptr inbounds [100 x i8], ptr %4, i32 0, i32 2
  store i8 32, ptr %12, align 2
  %13 = getelementptr inbounds [100 x i8], ptr %4, i64 0, i64 0
  store ptr %13, ptr %1, align 8
  %14 = load ptr, ptr %2, align 8
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call i64 @strlen(ptr noundef %16) #4
  store i64 %17, ptr %6, align 8
  %18 = load i64, ptr %6, align 8
  %19 = sub i64 100, %18
  %20 = icmp ugt i64 %19, 1
  br i1 %20, label %21, label %43

21:                                               ; preds = %0
  %22 = call noalias ptr @fopen(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %22, ptr %7, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = icmp ne ptr %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8
  %27 = load i64, ptr %6, align 8
  %28 = getelementptr inbounds nuw i8, ptr %26, i64 %27
  %29 = load i64, ptr %6, align 8
  %30 = sub i64 100, %29
  %31 = trunc i64 %30 to i32
  %32 = load ptr, ptr %7, align 8
  %33 = call ptr @fgets(ptr noundef %28, i32 noundef %31, ptr noundef %32)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  call void @printLine(ptr noundef @.str.2)
  %36 = load ptr, ptr %5, align 8
  %37 = load i64, ptr %6, align 8
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 %37
  store i8 0, ptr %38, align 1
  br label %39

39:                                               ; preds = %35, %25
  %40 = load ptr, ptr %7, align 8
  %41 = call i32 @fclose(ptr noundef %40)
  br label %42

42:                                               ; preds = %39, %21
  br label %43

43:                                               ; preds = %42, %0
  %44 = load ptr, ptr %5, align 8
  %45 = load ptr, ptr %2, align 8
  store ptr %44, ptr %45, align 8
  %46 = load ptr, ptr %3, align 8
  %47 = load ptr, ptr %46, align 8
  store ptr %47, ptr %8, align 8
  %48 = load ptr, ptr %8, align 8
  %49 = call noalias ptr @popen(ptr noundef %48, ptr noundef @.str.3)
  store ptr %49, ptr %9, align 8
  %50 = load ptr, ptr %9, align 8
  %51 = icmp ne ptr %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load ptr, ptr %9, align 8
  %54 = call i32 @pclose(ptr noundef %53)
  br label %55

55:                                               ; preds = %52, %43
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

declare noalias ptr @fopen(ptr noundef, ptr noundef) #3

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #3

declare void @printLine(ptr noundef) #3

declare i32 @fclose(ptr noundef) #3

declare noalias ptr @popen(ptr noundef, ptr noundef) #3

declare i32 @pclose(ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
