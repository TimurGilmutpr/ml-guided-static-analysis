; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s05/CWE134_Uncontrolled_Format_String__wchar_t_file_vprintf_12.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s05/CWE134_Uncontrolled_Format_String__wchar_t_file_vprintf_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [16 x i32] [i32 102, i32 105, i32 120, i32 101, i32 100, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 116, i32 101, i32 115, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1
@.str.4 = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_file_vprintf_12_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %3 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %3, ptr %1, align 8
  %4 = call i32 (...) @globalReturnsTrueOrFalse()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load ptr, ptr %1, align 8
  %8 = call ptr @wcscpy(ptr noundef %7, ptr noundef @.str) #6
  br label %12

9:                                                ; preds = %0
  %10 = load ptr, ptr %1, align 8
  %11 = call ptr @wcscpy(ptr noundef %10, ptr noundef @.str) #6
  br label %12

12:                                               ; preds = %9, %6
  %13 = call i32 (...) @globalReturnsTrueOrFalse()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load ptr, ptr %1, align 8
  %17 = load ptr, ptr %1, align 8
  call void (ptr, ...) @goodG2BVaSinkB(ptr noundef %16, ptr noundef %17)
  br label %21

18:                                               ; preds = %12
  %19 = load ptr, ptr %1, align 8
  %20 = load ptr, ptr %1, align 8
  call void (ptr, ...) @goodG2BVaSinkB(ptr noundef %19, ptr noundef %20)
  br label %21

21:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind
declare ptr @wcscpy(ptr noundef, ptr noundef) #3

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
declare void @llvm.va_start.p0(ptr) #4

declare i32 @vwprintf(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %7 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %7, ptr %1, align 8
  %8 = call i32 (...) @globalReturnsTrueOrFalse()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %0
  %11 = load ptr, ptr %1, align 8
  %12 = call i64 @wcslen(ptr noundef %11) #7
  store i64 %12, ptr %3, align 8
  %13 = load i64, ptr %3, align 8
  %14 = sub i64 100, %13
  %15 = icmp ugt i64 %14, 1
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = call noalias ptr @fopen(ptr noundef @.str.1, ptr noundef @.str.2)
  store ptr %17, ptr %4, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load ptr, ptr %1, align 8
  %22 = load i64, ptr %3, align 8
  %23 = getelementptr inbounds nuw i32, ptr %21, i64 %22
  %24 = load i64, ptr %3, align 8
  %25 = sub i64 100, %24
  %26 = trunc i64 %25 to i32
  %27 = load ptr, ptr %4, align 8
  %28 = call ptr @fgetws(ptr noundef %23, i32 noundef %26, ptr noundef %27)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  call void @printLine(ptr noundef @.str.3)
  %31 = load ptr, ptr %1, align 8
  %32 = load i64, ptr %3, align 8
  %33 = getelementptr inbounds nuw i32, ptr %31, i64 %32
  store i32 0, ptr %33, align 4
  br label %34

34:                                               ; preds = %30, %20
  %35 = load ptr, ptr %4, align 8
  %36 = call i32 @fclose(ptr noundef %35)
  br label %37

37:                                               ; preds = %34, %16
  br label %38

38:                                               ; preds = %37, %10
  br label %68

39:                                               ; preds = %0
  %40 = load ptr, ptr %1, align 8
  %41 = call i64 @wcslen(ptr noundef %40) #7
  store i64 %41, ptr %5, align 8
  %42 = load i64, ptr %5, align 8
  %43 = sub i64 100, %42
  %44 = icmp ugt i64 %43, 1
  br i1 %44, label %45, label %67

45:                                               ; preds = %39
  %46 = call noalias ptr @fopen(ptr noundef @.str.1, ptr noundef @.str.2)
  store ptr %46, ptr %6, align 8
  %47 = load ptr, ptr %6, align 8
  %48 = icmp ne ptr %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  %50 = load ptr, ptr %1, align 8
  %51 = load i64, ptr %5, align 8
  %52 = getelementptr inbounds nuw i32, ptr %50, i64 %51
  %53 = load i64, ptr %5, align 8
  %54 = sub i64 100, %53
  %55 = trunc i64 %54 to i32
  %56 = load ptr, ptr %6, align 8
  %57 = call ptr @fgetws(ptr noundef %52, i32 noundef %55, ptr noundef %56)
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  call void @printLine(ptr noundef @.str.3)
  %60 = load ptr, ptr %1, align 8
  %61 = load i64, ptr %5, align 8
  %62 = getelementptr inbounds nuw i32, ptr %60, i64 %61
  store i32 0, ptr %62, align 4
  br label %63

63:                                               ; preds = %59, %49
  %64 = load ptr, ptr %6, align 8
  %65 = call i32 @fclose(ptr noundef %64)
  br label %66

66:                                               ; preds = %63, %45
  br label %67

67:                                               ; preds = %66, %39
  br label %68

68:                                               ; preds = %67, %38
  %69 = call i32 (...) @globalReturnsTrueOrFalse()
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load ptr, ptr %1, align 8
  %73 = load ptr, ptr %1, align 8
  call void (ptr, ...) @goodB2GVaSinkG(ptr noundef %72, ptr noundef %73)
  br label %77

74:                                               ; preds = %68
  %75 = load ptr, ptr %1, align 8
  %76 = load ptr, ptr %1, align 8
  call void (ptr, ...) @goodB2GVaSinkG(ptr noundef %75, ptr noundef %76)
  br label %77

77:                                               ; preds = %74, %71
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #5

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare ptr @fgetws(ptr noundef, i32 noundef, ptr noundef) #2

declare void @printLine(ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2GVaSinkG(ptr noundef %0, ...) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %4)
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  %6 = call i32 @vwprintf(ptr noundef @.str.4, ptr noundef %5)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %7)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
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
