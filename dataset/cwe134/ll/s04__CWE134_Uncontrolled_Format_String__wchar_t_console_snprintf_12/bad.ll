; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_snprintf_12.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_snprintf_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i32] [i32 102, i32 105, i32 120, i32 101, i32 100, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 116, i32 101, i32 115, i32 116, i32 0], align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_console_snprintf_12_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i64, align 8
  %4 = alloca [100 x i32], align 16
  %5 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %6 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %6, ptr %1, align 8
  %7 = call i32 (...) @globalReturnsTrueOrFalse()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %0
  %10 = load ptr, ptr %1, align 8
  %11 = call i64 @wcslen(ptr noundef %10) #5
  store i64 %11, ptr %3, align 8
  %12 = load i64, ptr %3, align 8
  %13 = sub i64 100, %12
  %14 = icmp ugt i64 %13, 1
  br i1 %14, label %15, label %48

15:                                               ; preds = %9
  %16 = load ptr, ptr %1, align 8
  %17 = load i64, ptr %3, align 8
  %18 = getelementptr inbounds nuw i32, ptr %16, i64 %17
  %19 = load i64, ptr %3, align 8
  %20 = sub i64 100, %19
  %21 = trunc i64 %20 to i32
  %22 = load ptr, ptr @stdin, align 8
  %23 = call ptr @fgetws(ptr noundef %18, i32 noundef %21, ptr noundef %22)
  %24 = icmp ne ptr %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %15
  %26 = load ptr, ptr %1, align 8
  %27 = call i64 @wcslen(ptr noundef %26) #5
  store i64 %27, ptr %3, align 8
  %28 = load i64, ptr %3, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load ptr, ptr %1, align 8
  %32 = load i64, ptr %3, align 8
  %33 = sub i64 %32, 1
  %34 = getelementptr inbounds nuw i32, ptr %31, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load ptr, ptr %1, align 8
  %39 = load i64, ptr %3, align 8
  %40 = sub i64 %39, 1
  %41 = getelementptr inbounds nuw i32, ptr %38, i64 %40
  store i32 0, ptr %41, align 4
  br label %42

42:                                               ; preds = %37, %30, %25
  br label %47

43:                                               ; preds = %15
  call void @printLine(ptr noundef @.str)
  %44 = load ptr, ptr %1, align 8
  %45 = load i64, ptr %3, align 8
  %46 = getelementptr inbounds nuw i32, ptr %44, i64 %45
  store i32 0, ptr %46, align 4
  br label %47

47:                                               ; preds = %43, %42
  br label %48

48:                                               ; preds = %47, %9
  br label %52

49:                                               ; preds = %0
  %50 = load ptr, ptr %1, align 8
  %51 = call ptr @wcscpy(ptr noundef %50, ptr noundef @.str.1) #6
  br label %52

52:                                               ; preds = %49, %48
  %53 = call i32 (...) @globalReturnsTrueOrFalse()
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 400, i1 false)
  %56 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  %57 = load ptr, ptr %1, align 8
  %58 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %56, i64 noundef 99, ptr noundef %57) #6
  %59 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  call void @printWLine(ptr noundef %59)
  br label %65

60:                                               ; preds = %52
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 400, i1 false)
  %61 = getelementptr inbounds [100 x i32], ptr %5, i64 0, i64 0
  %62 = load ptr, ptr %1, align 8
  %63 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %61, i64 noundef 99, ptr noundef @.str.2, ptr noundef %62) #6
  %64 = getelementptr inbounds [100 x i32], ptr %5, i64 0, i64 0
  call void @printWLine(ptr noundef %64)
  br label %65

65:                                               ; preds = %60, %55
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #3

declare ptr @fgetws(ptr noundef, i32 noundef, ptr noundef) #2

declare void @printLine(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @wcscpy(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare i32 @swprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

declare void @printWLine(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
