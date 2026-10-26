; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_vprintf_17.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_vprintf_17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [16 x i32] [i32 102, i32 105, i32 120, i32 101, i32 100, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 116, i32 101, i32 115, i32 116, i32 0], align 4
@stdin = external global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1
@.str.2 = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_console_vprintf_17_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 400, i1 false)
  %5 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  store ptr %5, ptr %3, align 8
  store i32 0, ptr %1, align 4
  br label %6

6:                                                ; preds = %12, %0
  %7 = load i32, ptr %1, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8
  %11 = call ptr @wcscpy(ptr noundef %10, ptr noundef @.str) #6
  br label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %1, align 4
  br label %6, !llvm.loop !6

15:                                               ; preds = %6
  store i32 0, ptr %2, align 4
  br label %16

16:                                               ; preds = %22, %15
  %17 = load i32, ptr %2, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 8
  %21 = load ptr, ptr %3, align 8
  call void (ptr, ...) @goodG2BVaSinkB(ptr noundef %20, ptr noundef %21)
  br label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %2, align 4
  br label %16, !llvm.loop !8

25:                                               ; preds = %16
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare ptr @wcscpy(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2BVaSinkB(ptr noundef %0, ...) #0 {
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

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #3

declare i32 @vwprintf(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca [100 x i32], align 16
  %5 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 400, i1 false)
  %6 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  store ptr %6, ptr %3, align 8
  store i32 0, ptr %1, align 4
  br label %7

7:                                                ; preds = %50, %0
  %8 = load i32, ptr %1, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %53

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8
  %12 = call i64 @wcslen(ptr noundef %11) #7
  store i64 %12, ptr %5, align 8
  %13 = load i64, ptr %5, align 8
  %14 = sub i64 100, %13
  %15 = icmp ugt i64 %14, 1
  br i1 %15, label %16, label %49

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8
  %18 = load i64, ptr %5, align 8
  %19 = getelementptr inbounds nuw i32, ptr %17, i64 %18
  %20 = load i64, ptr %5, align 8
  %21 = sub i64 100, %20
  %22 = trunc i64 %21 to i32
  %23 = load ptr, ptr @stdin, align 8
  %24 = call ptr @fgetws(ptr noundef %19, i32 noundef %22, ptr noundef %23)
  %25 = icmp ne ptr %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %16
  %27 = load ptr, ptr %3, align 8
  %28 = call i64 @wcslen(ptr noundef %27) #7
  store i64 %28, ptr %5, align 8
  %29 = load i64, ptr %5, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load ptr, ptr %3, align 8
  %33 = load i64, ptr %5, align 8
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds nuw i32, ptr %32, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load ptr, ptr %3, align 8
  %40 = load i64, ptr %5, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds nuw i32, ptr %39, i64 %41
  store i32 0, ptr %42, align 4
  br label %43

43:                                               ; preds = %38, %31, %26
  br label %48

44:                                               ; preds = %16
  call void @printLine(ptr noundef @.str.1)
  %45 = load ptr, ptr %3, align 8
  %46 = load i64, ptr %5, align 8
  %47 = getelementptr inbounds nuw i32, ptr %45, i64 %46
  store i32 0, ptr %47, align 4
  br label %48

48:                                               ; preds = %44, %43
  br label %49

49:                                               ; preds = %48, %10
  br label %50

50:                                               ; preds = %49
  %51 = load i32, ptr %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %1, align 4
  br label %7, !llvm.loop !9

53:                                               ; preds = %7
  store i32 0, ptr %2, align 4
  br label %54

54:                                               ; preds = %60, %53
  %55 = load i32, ptr %2, align 4
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load ptr, ptr %3, align 8
  %59 = load ptr, ptr %3, align 8
  call void (ptr, ...) @goodB2GVaSinkG(ptr noundef %58, ptr noundef %59)
  br label %60

60:                                               ; preds = %57
  %61 = load i32, ptr %2, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %2, align 4
  br label %54, !llvm.loop !10

63:                                               ; preds = %54
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #5

declare ptr @fgetws(ptr noundef, i32 noundef, ptr noundef) #4

declare void @printLine(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2GVaSinkG(ptr noundef %0, ...) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %4)
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  %6 = call i32 @vwprintf(ptr noundef @.str.2, ptr noundef %5)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %7)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
