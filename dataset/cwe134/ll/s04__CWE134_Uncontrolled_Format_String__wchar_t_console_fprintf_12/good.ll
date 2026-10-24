; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_fprintf_12.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_fprintf_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1
@stdout = external global ptr, align 8
@.str.1 = private unnamed_addr constant [4 x i32] [i32 37, i32 115, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [16 x i32] [i32 102, i32 105, i32 120, i32 101, i32 100, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 116, i32 101, i32 115, i32 116, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_console_fprintf_12_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %5 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %5, ptr %1, align 8
  %6 = call i32 (...) @globalReturnsTrueOrFalse()
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
  br label %88

48:                                               ; preds = %0
  %49 = load ptr, ptr %1, align 8
  %50 = call i64 @wcslen(ptr noundef %49) #5
  store i64 %50, ptr %4, align 8
  %51 = load i64, ptr %4, align 8
  %52 = sub i64 100, %51
  %53 = icmp ugt i64 %52, 1
  br i1 %53, label %54, label %87

54:                                               ; preds = %48
  %55 = load ptr, ptr %1, align 8
  %56 = load i64, ptr %4, align 8
  %57 = getelementptr inbounds nuw i32, ptr %55, i64 %56
  %58 = load i64, ptr %4, align 8
  %59 = sub i64 100, %58
  %60 = trunc i64 %59 to i32
  %61 = load ptr, ptr @stdin, align 8
  %62 = call ptr @fgetws(ptr noundef %57, i32 noundef %60, ptr noundef %61)
  %63 = icmp ne ptr %62, null
  br i1 %63, label %64, label %82

64:                                               ; preds = %54
  %65 = load ptr, ptr %1, align 8
  %66 = call i64 @wcslen(ptr noundef %65) #5
  store i64 %66, ptr %4, align 8
  %67 = load i64, ptr %4, align 8
  %68 = icmp ugt i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load ptr, ptr %1, align 8
  %71 = load i64, ptr %4, align 8
  %72 = sub i64 %71, 1
  %73 = getelementptr inbounds nuw i32, ptr %70, i64 %72
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 10
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load ptr, ptr %1, align 8
  %78 = load i64, ptr %4, align 8
  %79 = sub i64 %78, 1
  %80 = getelementptr inbounds nuw i32, ptr %77, i64 %79
  store i32 0, ptr %80, align 4
  br label %81

81:                                               ; preds = %76, %69, %64
  br label %86

82:                                               ; preds = %54
  call void @printLine(ptr noundef @.str)
  %83 = load ptr, ptr %1, align 8
  %84 = load i64, ptr %4, align 8
  %85 = getelementptr inbounds nuw i32, ptr %83, i64 %84
  store i32 0, ptr %85, align 4
  br label %86

86:                                               ; preds = %82, %81
  br label %87

87:                                               ; preds = %86, %48
  br label %88

88:                                               ; preds = %87, %47
  %89 = call i32 (...) @globalReturnsTrueOrFalse()
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load ptr, ptr @stdout, align 8
  %93 = load ptr, ptr %1, align 8
  %94 = call i32 (ptr, ptr, ...) @fwprintf(ptr noundef %92, ptr noundef @.str.1, ptr noundef %93)
  br label %99

95:                                               ; preds = %88
  %96 = load ptr, ptr @stdout, align 8
  %97 = load ptr, ptr %1, align 8
  %98 = call i32 (ptr, ptr, ...) @fwprintf(ptr noundef %96, ptr noundef @.str.1, ptr noundef %97)
  br label %99

99:                                               ; preds = %95, %91
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #3

declare ptr @fgetws(ptr noundef, i32 noundef, ptr noundef) #2

declare void @printLine(ptr noundef) #2

declare i32 @fwprintf(ptr noundef, ptr noundef, ...) #2

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
  %8 = call ptr @wcscpy(ptr noundef %7, ptr noundef @.str.2) #6
  br label %12

9:                                                ; preds = %0
  %10 = load ptr, ptr %1, align 8
  %11 = call ptr @wcscpy(ptr noundef %10, ptr noundef @.str.2) #6
  br label %12

12:                                               ; preds = %9, %6
  %13 = call i32 (...) @globalReturnsTrueOrFalse()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load ptr, ptr @stdout, align 8
  %17 = load ptr, ptr %1, align 8
  %18 = call i32 (ptr, ptr, ...) @fwprintf(ptr noundef %16, ptr noundef %17)
  br label %23

19:                                               ; preds = %12
  %20 = load ptr, ptr @stdout, align 8
  %21 = load ptr, ptr %1, align 8
  %22 = call i32 (ptr, ptr, ...) @fwprintf(ptr noundef %20, ptr noundef %21)
  br label %23

23:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: nounwind
declare ptr @wcscpy(ptr noundef, ptr noundef) #4

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
