; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s07/CWE78_OS_Command_Injection__wchar_t_file_system_32.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s07/CWE78_OS_Command_Injection__wchar_t_file_system_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"command execution failed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__wchar_t_file_system_32_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [100 x i32], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %1, ptr %2, align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 400, i1 false)
  %9 = getelementptr inbounds [100 x i32], ptr %4, i32 0, i32 0
  store i32 108, ptr %9, align 16
  %10 = getelementptr inbounds [100 x i32], ptr %4, i32 0, i32 1
  store i32 115, ptr %10, align 4
  %11 = getelementptr inbounds [100 x i32], ptr %4, i32 0, i32 2
  store i32 32, ptr %11, align 8
  %12 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  store ptr %12, ptr %1, align 8
  %13 = load ptr, ptr %2, align 8
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %5, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = call i64 @wcslen(ptr noundef %15) #5
  store i64 %16, ptr %6, align 8
  %17 = load i64, ptr %6, align 8
  %18 = sub i64 100, %17
  %19 = icmp ugt i64 %18, 1
  br i1 %19, label %20, label %42

20:                                               ; preds = %0
  %21 = call noalias ptr @fopen(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %21, ptr %7, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = icmp ne ptr %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 8
  %26 = load i64, ptr %6, align 8
  %27 = getelementptr inbounds nuw i32, ptr %25, i64 %26
  %28 = load i64, ptr %6, align 8
  %29 = sub i64 100, %28
  %30 = trunc i64 %29 to i32
  %31 = load ptr, ptr %7, align 8
  %32 = call ptr @fgetws(ptr noundef %27, i32 noundef %30, ptr noundef %31)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  call void @printLine(ptr noundef @.str.2)
  %35 = load ptr, ptr %5, align 8
  %36 = load i64, ptr %6, align 8
  %37 = getelementptr inbounds nuw i32, ptr %35, i64 %36
  store i32 0, ptr %37, align 4
  br label %38

38:                                               ; preds = %34, %24
  %39 = load ptr, ptr %7, align 8
  %40 = call i32 @fclose(ptr noundef %39)
  br label %41

41:                                               ; preds = %38, %20
  br label %42

42:                                               ; preds = %41, %0
  %43 = load ptr, ptr %5, align 8
  %44 = load ptr, ptr %2, align 8
  store ptr %43, ptr %44, align 8
  %45 = load ptr, ptr %3, align 8
  %46 = load ptr, ptr %45, align 8
  store ptr %46, ptr %8, align 8
  %47 = load ptr, ptr %8, align 8
  %48 = call i32 @system(ptr noundef %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  call void @printLine(ptr noundef @.str.3)
  call void @exit(i32 noundef 1) #6
  unreachable

51:                                               ; preds = %42
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

declare i32 @system(ptr noundef) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
