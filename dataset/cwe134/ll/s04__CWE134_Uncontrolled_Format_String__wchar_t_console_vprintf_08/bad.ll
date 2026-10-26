; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_vprintf_08.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_vprintf_08.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_console_vprintf_08_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %4 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %4, ptr %1, align 8
  %5 = call i32 @staticReturnsTrue()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %47

7:                                                ; preds = %0
  %8 = load ptr, ptr %1, align 8
  %9 = call i64 @wcslen(ptr noundef %8) #5
  store i64 %9, ptr %3, align 8
  %10 = load i64, ptr %3, align 8
  %11 = sub i64 100, %10
  %12 = icmp ugt i64 %11, 1
  br i1 %12, label %13, label %46

13:                                               ; preds = %7
  %14 = load ptr, ptr %1, align 8
  %15 = load i64, ptr %3, align 8
  %16 = getelementptr inbounds nuw i32, ptr %14, i64 %15
  %17 = load i64, ptr %3, align 8
  %18 = sub i64 100, %17
  %19 = trunc i64 %18 to i32
  %20 = load ptr, ptr @stdin, align 8
  %21 = call ptr @fgetws(ptr noundef %16, i32 noundef %19, ptr noundef %20)
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %13
  %24 = load ptr, ptr %1, align 8
  %25 = call i64 @wcslen(ptr noundef %24) #5
  store i64 %25, ptr %3, align 8
  %26 = load i64, ptr %3, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load ptr, ptr %1, align 8
  %30 = load i64, ptr %3, align 8
  %31 = sub i64 %30, 1
  %32 = getelementptr inbounds nuw i32, ptr %29, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 10
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load ptr, ptr %1, align 8
  %37 = load i64, ptr %3, align 8
  %38 = sub i64 %37, 1
  %39 = getelementptr inbounds nuw i32, ptr %36, i64 %38
  store i32 0, ptr %39, align 4
  br label %40

40:                                               ; preds = %35, %28, %23
  br label %45

41:                                               ; preds = %13
  call void @printLine(ptr noundef @.str)
  %42 = load ptr, ptr %1, align 8
  %43 = load i64, ptr %3, align 8
  %44 = getelementptr inbounds nuw i32, ptr %42, i64 %43
  store i32 0, ptr %44, align 4
  br label %45

45:                                               ; preds = %41, %40
  br label %46

46:                                               ; preds = %45, %7
  br label %47

47:                                               ; preds = %46, %0
  %48 = call i32 @staticReturnsTrue()
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load ptr, ptr %1, align 8
  %52 = load ptr, ptr %1, align 8
  call void (ptr, ...) @badVaSinkB(ptr noundef %51, ptr noundef %52)
  br label %53

53:                                               ; preds = %50, %47
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #2

declare ptr @fgetws(ptr noundef, i32 noundef, ptr noundef) #3

declare void @printLine(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @badVaSinkB(ptr noundef %0, ...) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %4)
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  %7 = call i32 @vwprintf(ptr noundef %5, ptr noundef %6)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @staticReturnsTrue() #0 {
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

declare i32 @vwprintf(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
