; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s01/CWE134_Uncontrolled_Format_String__char_console_snprintf_12.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s01/CWE134_Uncontrolled_Format_String__char_console_snprintf_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_snprintf_12_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [100 x i8], align 16
  %6 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %7 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %7, ptr %1, align 8
  %8 = call i32 (...) @globalReturnsTrueOrFalse()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %0
  %11 = load ptr, ptr %1, align 8
  %12 = call i64 @strlen(ptr noundef %11) #5
  store i64 %12, ptr %3, align 8
  %13 = load i64, ptr %3, align 8
  %14 = sub i64 100, %13
  %15 = icmp ugt i64 %14, 1
  br i1 %15, label %16, label %50

16:                                               ; preds = %10
  %17 = load ptr, ptr %1, align 8
  %18 = load i64, ptr %3, align 8
  %19 = getelementptr inbounds nuw i8, ptr %17, i64 %18
  %20 = load i64, ptr %3, align 8
  %21 = sub i64 100, %20
  %22 = trunc i64 %21 to i32
  %23 = load ptr, ptr @stdin, align 8
  %24 = call ptr @fgets(ptr noundef %19, i32 noundef %22, ptr noundef %23)
  %25 = icmp ne ptr %24, null
  br i1 %25, label %26, label %45

26:                                               ; preds = %16
  %27 = load ptr, ptr %1, align 8
  %28 = call i64 @strlen(ptr noundef %27) #5
  store i64 %28, ptr %3, align 8
  %29 = load i64, ptr %3, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load ptr, ptr %1, align 8
  %33 = load i64, ptr %3, align 8
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds nuw i8, ptr %32, i64 %34
  %36 = load i8, ptr %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load ptr, ptr %1, align 8
  %41 = load i64, ptr %3, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds nuw i8, ptr %40, i64 %42
  store i8 0, ptr %43, align 1
  br label %44

44:                                               ; preds = %39, %31, %26
  br label %49

45:                                               ; preds = %16
  call void @printLine(ptr noundef @.str)
  %46 = load ptr, ptr %1, align 8
  %47 = load i64, ptr %3, align 8
  %48 = getelementptr inbounds nuw i8, ptr %46, i64 %47
  store i8 0, ptr %48, align 1
  br label %49

49:                                               ; preds = %45, %44
  br label %50

50:                                               ; preds = %49, %10
  br label %92

51:                                               ; preds = %0
  %52 = load ptr, ptr %1, align 8
  %53 = call i64 @strlen(ptr noundef %52) #5
  store i64 %53, ptr %4, align 8
  %54 = load i64, ptr %4, align 8
  %55 = sub i64 100, %54
  %56 = icmp ugt i64 %55, 1
  br i1 %56, label %57, label %91

57:                                               ; preds = %51
  %58 = load ptr, ptr %1, align 8
  %59 = load i64, ptr %4, align 8
  %60 = getelementptr inbounds nuw i8, ptr %58, i64 %59
  %61 = load i64, ptr %4, align 8
  %62 = sub i64 100, %61
  %63 = trunc i64 %62 to i32
  %64 = load ptr, ptr @stdin, align 8
  %65 = call ptr @fgets(ptr noundef %60, i32 noundef %63, ptr noundef %64)
  %66 = icmp ne ptr %65, null
  br i1 %66, label %67, label %86

67:                                               ; preds = %57
  %68 = load ptr, ptr %1, align 8
  %69 = call i64 @strlen(ptr noundef %68) #5
  store i64 %69, ptr %4, align 8
  %70 = load i64, ptr %4, align 8
  %71 = icmp ugt i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load ptr, ptr %1, align 8
  %74 = load i64, ptr %4, align 8
  %75 = sub i64 %74, 1
  %76 = getelementptr inbounds nuw i8, ptr %73, i64 %75
  %77 = load i8, ptr %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load ptr, ptr %1, align 8
  %82 = load i64, ptr %4, align 8
  %83 = sub i64 %82, 1
  %84 = getelementptr inbounds nuw i8, ptr %81, i64 %83
  store i8 0, ptr %84, align 1
  br label %85

85:                                               ; preds = %80, %72, %67
  br label %90

86:                                               ; preds = %57
  call void @printLine(ptr noundef @.str)
  %87 = load ptr, ptr %1, align 8
  %88 = load i64, ptr %4, align 8
  %89 = getelementptr inbounds nuw i8, ptr %87, i64 %88
  store i8 0, ptr %89, align 1
  br label %90

90:                                               ; preds = %86, %85
  br label %91

91:                                               ; preds = %90, %51
  br label %92

92:                                               ; preds = %91, %50
  %93 = call i32 (...) @globalReturnsTrueOrFalse()
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 100, i1 false)
  %96 = getelementptr inbounds [100 x i8], ptr %5, i64 0, i64 0
  %97 = load ptr, ptr %1, align 8
  %98 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %96, i64 noundef 99, ptr noundef @.str.1, ptr noundef %97) #6
  %99 = getelementptr inbounds [100 x i8], ptr %5, i64 0, i64 0
  call void @printLine(ptr noundef %99)
  br label %105

100:                                              ; preds = %92
  call void @llvm.memset.p0.i64(ptr align 16 %6, i8 0, i64 100, i1 false)
  %101 = getelementptr inbounds [100 x i8], ptr %6, i64 0, i64 0
  %102 = load ptr, ptr %1, align 8
  %103 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %101, i64 noundef 99, ptr noundef @.str.1, ptr noundef %102) #6
  %104 = getelementptr inbounds [100 x i8], ptr %6, i64 0, i64 0
  call void @printLine(ptr noundef %104)
  br label %105

105:                                              ; preds = %100, %95
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #2

declare void @printLine(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %5, ptr %1, align 8
  %6 = call i32 (...) @globalReturnsTrueOrFalse()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load ptr, ptr %1, align 8
  %10 = call ptr @strcpy(ptr noundef %9, ptr noundef @.str.2) #6
  br label %14

11:                                               ; preds = %0
  %12 = load ptr, ptr %1, align 8
  %13 = call ptr @strcpy(ptr noundef %12, ptr noundef @.str.2) #6
  br label %14

14:                                               ; preds = %11, %8
  %15 = call i32 (...) @globalReturnsTrueOrFalse()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 100, i1 false)
  %18 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  %19 = load ptr, ptr %1, align 8
  %20 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %18, i64 noundef 99, ptr noundef %19) #6
  %21 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  call void @printLine(ptr noundef %21)
  br label %27

22:                                               ; preds = %14
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 100, i1 false)
  %23 = getelementptr inbounds [100 x i8], ptr %4, i64 0, i64 0
  %24 = load ptr, ptr %1, align 8
  %25 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %23, i64 noundef 99, ptr noundef %24) #6
  %26 = getelementptr inbounds [100 x i8], ptr %4, i64 0, i64 0
  call void @printLine(ptr noundef %26)
  br label %27

27:                                               ; preds = %22, %17
  ret void
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #4

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
