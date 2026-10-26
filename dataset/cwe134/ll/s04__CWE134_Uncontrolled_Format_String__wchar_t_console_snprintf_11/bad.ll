; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_snprintf_11.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_snprintf_11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_console_snprintf_11_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i64, align 8
  %4 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %5 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %5, ptr %1, align 8
  %6 = call i32 (...) @globalReturnsTrue()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %48

8:                                                ; preds = %0
  %9 = load ptr, ptr %1, align 8
  %10 = call i64 @wcslen(ptr noundef %9) #5
  store i64 %10, ptr %3, align 8
  %11 = load i64, ptr %3, align 8
  %12 = sub i64 100, %11
  %13 = icmp ugt i64 %12, 1
  br i1 %13, label %14, label %47

14:                                               ; preds = %8
  %15 = load ptr, ptr %1, align 8
  %16 = load i64, ptr %3, align 8
  %17 = getelementptr inbounds nuw i32, ptr %15, i64 %16
  %18 = load i64, ptr %3, align 8
  %19 = sub i64 100, %18
  %20 = trunc i64 %19 to i32
  %21 = load ptr, ptr @stdin, align 8
  %22 = call ptr @fgetws(ptr noundef %17, i32 noundef %20, ptr noundef %21)
  %23 = icmp ne ptr %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %14
  %25 = load ptr, ptr %1, align 8
  %26 = call i64 @wcslen(ptr noundef %25) #5
  store i64 %26, ptr %3, align 8
  %27 = load i64, ptr %3, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load ptr, ptr %1, align 8
  %31 = load i64, ptr %3, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds nuw i32, ptr %30, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load ptr, ptr %1, align 8
  %38 = load i64, ptr %3, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds nuw i32, ptr %37, i64 %39
  store i32 0, ptr %40, align 4
  br label %41

41:                                               ; preds = %36, %29, %24
  br label %46

42:                                               ; preds = %14
  call void @printLine(ptr noundef @.str)
  %43 = load ptr, ptr %1, align 8
  %44 = load i64, ptr %3, align 8
  %45 = getelementptr inbounds nuw i32, ptr %43, i64 %44
  store i32 0, ptr %45, align 4
  br label %46

46:                                               ; preds = %42, %41
  br label %47

47:                                               ; preds = %46, %8
  br label %48

48:                                               ; preds = %47, %0
  %49 = call i32 (...) @globalReturnsTrue()
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 400, i1 false)
  %52 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  %53 = load ptr, ptr %1, align 8
  %54 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %52, i64 noundef 99, ptr noundef %53) #6
  %55 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  call void @printWLine(ptr noundef %55)
  br label %56

56:                                               ; preds = %51, %48
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @globalReturnsTrue(...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #3

declare ptr @fgetws(ptr noundef, i32 noundef, ptr noundef) #2

declare void @printLine(ptr noundef) #2

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
