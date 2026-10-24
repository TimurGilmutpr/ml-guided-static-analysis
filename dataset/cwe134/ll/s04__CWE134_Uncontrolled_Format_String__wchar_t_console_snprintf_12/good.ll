; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_snprintf_12.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_snprintf_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4
@.str.2 = private unnamed_addr constant [16 x i32] [i32 102, i32 105, i32 120, i32 101, i32 100, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 116, i32 101, i32 115, i32 116, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_console_snprintf_12_good() #0 {
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
  %5 = alloca [100 x i32], align 16
  %6 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %7 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %7, ptr %1, align 8
  %8 = call i32 (...) @globalReturnsTrueOrFalse()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %50

10:                                               ; preds = %0
  %11 = load ptr, ptr %1, align 8
  %12 = call i64 @wcslen(ptr noundef %11) #5
  store i64 %12, ptr %3, align 8
  %13 = load i64, ptr %3, align 8
  %14 = sub i64 100, %13
  %15 = icmp ugt i64 %14, 1
  br i1 %15, label %16, label %49

16:                                               ; preds = %10
  %17 = load ptr, ptr %1, align 8
  %18 = load i64, ptr %3, align 8
  %19 = getelementptr inbounds nuw i32, ptr %17, i64 %18
  %20 = load i64, ptr %3, align 8
  %21 = sub i64 100, %20
  %22 = trunc i64 %21 to i32
  %23 = load ptr, ptr @stdin, align 8
  %24 = call ptr @fgetws(ptr noundef %19, i32 noundef %22, ptr noundef %23)
  %25 = icmp ne ptr %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %16
  %27 = load ptr, ptr %1, align 8
  %28 = call i64 @wcslen(ptr noundef %27) #5
  store i64 %28, ptr %3, align 8
  %29 = load i64, ptr %3, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load ptr, ptr %1, align 8
  %33 = load i64, ptr %3, align 8
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds nuw i32, ptr %32, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load ptr, ptr %1, align 8
  %40 = load i64, ptr %3, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds nuw i32, ptr %39, i64 %41
  store i32 0, ptr %42, align 4
  br label %43

43:                                               ; preds = %38, %31, %26
  br label %48

44:                                               ; preds = %16
  call void @printLine(ptr noundef @.str)
  %45 = load ptr, ptr %1, align 8
  %46 = load i64, ptr %3, align 8
  %47 = getelementptr inbounds nuw i32, ptr %45, i64 %46
  store i32 0, ptr %47, align 4
  br label %48

48:                                               ; preds = %44, %43
  br label %49

49:                                               ; preds = %48, %10
  br label %90

50:                                               ; preds = %0
  %51 = load ptr, ptr %1, align 8
  %52 = call i64 @wcslen(ptr noundef %51) #5
  store i64 %52, ptr %4, align 8
  %53 = load i64, ptr %4, align 8
  %54 = sub i64 100, %53
  %55 = icmp ugt i64 %54, 1
  br i1 %55, label %56, label %89

56:                                               ; preds = %50
  %57 = load ptr, ptr %1, align 8
  %58 = load i64, ptr %4, align 8
  %59 = getelementptr inbounds nuw i32, ptr %57, i64 %58
  %60 = load i64, ptr %4, align 8
  %61 = sub i64 100, %60
  %62 = trunc i64 %61 to i32
  %63 = load ptr, ptr @stdin, align 8
  %64 = call ptr @fgetws(ptr noundef %59, i32 noundef %62, ptr noundef %63)
  %65 = icmp ne ptr %64, null
  br i1 %65, label %66, label %84

66:                                               ; preds = %56
  %67 = load ptr, ptr %1, align 8
  %68 = call i64 @wcslen(ptr noundef %67) #5
  store i64 %68, ptr %4, align 8
  %69 = load i64, ptr %4, align 8
  %70 = icmp ugt i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load ptr, ptr %1, align 8
  %73 = load i64, ptr %4, align 8
  %74 = sub i64 %73, 1
  %75 = getelementptr inbounds nuw i32, ptr %72, i64 %74
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 10
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load ptr, ptr %1, align 8
  %80 = load i64, ptr %4, align 8
  %81 = sub i64 %80, 1
  %82 = getelementptr inbounds nuw i32, ptr %79, i64 %81
  store i32 0, ptr %82, align 4
  br label %83

83:                                               ; preds = %78, %71, %66
  br label %88

84:                                               ; preds = %56
  call void @printLine(ptr noundef @.str)
  %85 = load ptr, ptr %1, align 8
  %86 = load i64, ptr %4, align 8
  %87 = getelementptr inbounds nuw i32, ptr %85, i64 %86
  store i32 0, ptr %87, align 4
  br label %88

88:                                               ; preds = %84, %83
  br label %89

89:                                               ; preds = %88, %50
  br label %90

90:                                               ; preds = %89, %49
  %91 = call i32 (...) @globalReturnsTrueOrFalse()
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 400, i1 false)
  %94 = getelementptr inbounds [100 x i32], ptr %5, i64 0, i64 0
  %95 = load ptr, ptr %1, align 8
  %96 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %94, i64 noundef 99, ptr noundef @.str.1, ptr noundef %95) #6
  %97 = getelementptr inbounds [100 x i32], ptr %5, i64 0, i64 0
  call void @printWLine(ptr noundef %97)
  br label %103

98:                                               ; preds = %90
  call void @llvm.memset.p0.i64(ptr align 16 %6, i8 0, i64 400, i1 false)
  %99 = getelementptr inbounds [100 x i32], ptr %6, i64 0, i64 0
  %100 = load ptr, ptr %1, align 8
  %101 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %99, i64 noundef 99, ptr noundef @.str.1, ptr noundef %100) #6
  %102 = getelementptr inbounds [100 x i32], ptr %6, i64 0, i64 0
  call void @printWLine(ptr noundef %102)
  br label %103

103:                                              ; preds = %98, %93
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
declare i32 @swprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

declare void @printWLine(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca [100 x i32], align 16
  %4 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %5 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %5, ptr %1, align 8
  %6 = call i32 (...) @globalReturnsTrueOrFalse()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load ptr, ptr %1, align 8
  %10 = call ptr @wcscpy(ptr noundef %9, ptr noundef @.str.2) #6
  br label %14

11:                                               ; preds = %0
  %12 = load ptr, ptr %1, align 8
  %13 = call ptr @wcscpy(ptr noundef %12, ptr noundef @.str.2) #6
  br label %14

14:                                               ; preds = %11, %8
  %15 = call i32 (...) @globalReturnsTrueOrFalse()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 400, i1 false)
  %18 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  %19 = load ptr, ptr %1, align 8
  %20 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %18, i64 noundef 99, ptr noundef %19) #6
  %21 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  call void @printWLine(ptr noundef %21)
  br label %27

22:                                               ; preds = %14
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 400, i1 false)
  %23 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  %24 = load ptr, ptr %1, align 8
  %25 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %23, i64 noundef 99, ptr noundef %24) #6
  %26 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  call void @printWLine(ptr noundef %26)
  br label %27

27:                                               ; preds = %22, %17
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
