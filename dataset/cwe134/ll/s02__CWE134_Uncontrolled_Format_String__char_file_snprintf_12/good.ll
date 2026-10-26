; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s02/CWE134_Uncontrolled_Format_String__char_file_snprintf_12.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s02/CWE134_Uncontrolled_Format_String__char_file_snprintf_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_snprintf_12_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [100 x i8], align 16
  %8 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %9 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %9, ptr %1, align 8
  %10 = call i32 (...) @globalReturnsTrueOrFalse()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %0
  %13 = load ptr, ptr %1, align 8
  %14 = call i64 @strlen(ptr noundef %13) #5
  store i64 %14, ptr %3, align 8
  %15 = load i64, ptr %3, align 8
  %16 = sub i64 100, %15
  %17 = icmp ugt i64 %16, 1
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = call noalias ptr @fopen(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %19, ptr %4, align 8
  %20 = load ptr, ptr %4, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load ptr, ptr %1, align 8
  %24 = load i64, ptr %3, align 8
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 %24
  %26 = load i64, ptr %3, align 8
  %27 = sub i64 100, %26
  %28 = trunc i64 %27 to i32
  %29 = load ptr, ptr %4, align 8
  %30 = call ptr @fgets(ptr noundef %25, i32 noundef %28, ptr noundef %29)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  call void @printLine(ptr noundef @.str.2)
  %33 = load ptr, ptr %1, align 8
  %34 = load i64, ptr %3, align 8
  %35 = getelementptr inbounds nuw i8, ptr %33, i64 %34
  store i8 0, ptr %35, align 1
  br label %36

36:                                               ; preds = %32, %22
  %37 = load ptr, ptr %4, align 8
  %38 = call i32 @fclose(ptr noundef %37)
  br label %39

39:                                               ; preds = %36, %18
  br label %40

40:                                               ; preds = %39, %12
  br label %70

41:                                               ; preds = %0
  %42 = load ptr, ptr %1, align 8
  %43 = call i64 @strlen(ptr noundef %42) #5
  store i64 %43, ptr %5, align 8
  %44 = load i64, ptr %5, align 8
  %45 = sub i64 100, %44
  %46 = icmp ugt i64 %45, 1
  br i1 %46, label %47, label %69

47:                                               ; preds = %41
  %48 = call noalias ptr @fopen(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %48, ptr %6, align 8
  %49 = load ptr, ptr %6, align 8
  %50 = icmp ne ptr %49, null
  br i1 %50, label %51, label %68

51:                                               ; preds = %47
  %52 = load ptr, ptr %1, align 8
  %53 = load i64, ptr %5, align 8
  %54 = getelementptr inbounds nuw i8, ptr %52, i64 %53
  %55 = load i64, ptr %5, align 8
  %56 = sub i64 100, %55
  %57 = trunc i64 %56 to i32
  %58 = load ptr, ptr %6, align 8
  %59 = call ptr @fgets(ptr noundef %54, i32 noundef %57, ptr noundef %58)
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  call void @printLine(ptr noundef @.str.2)
  %62 = load ptr, ptr %1, align 8
  %63 = load i64, ptr %5, align 8
  %64 = getelementptr inbounds nuw i8, ptr %62, i64 %63
  store i8 0, ptr %64, align 1
  br label %65

65:                                               ; preds = %61, %51
  %66 = load ptr, ptr %6, align 8
  %67 = call i32 @fclose(ptr noundef %66)
  br label %68

68:                                               ; preds = %65, %47
  br label %69

69:                                               ; preds = %68, %41
  br label %70

70:                                               ; preds = %69, %40
  %71 = call i32 (...) @globalReturnsTrueOrFalse()
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  call void @llvm.memset.p0.i64(ptr align 16 %7, i8 0, i64 100, i1 false)
  %74 = getelementptr inbounds [100 x i8], ptr %7, i64 0, i64 0
  %75 = load ptr, ptr %1, align 8
  %76 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %74, i64 noundef 99, ptr noundef @.str.3, ptr noundef %75) #6
  %77 = getelementptr inbounds [100 x i8], ptr %7, i64 0, i64 0
  call void @printLine(ptr noundef %77)
  br label %83

78:                                               ; preds = %70
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 100, i1 false)
  %79 = getelementptr inbounds [100 x i8], ptr %8, i64 0, i64 0
  %80 = load ptr, ptr %1, align 8
  %81 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %79, i64 noundef 99, ptr noundef @.str.3, ptr noundef %80) #6
  %82 = getelementptr inbounds [100 x i8], ptr %8, i64 0, i64 0
  call void @printLine(ptr noundef %82)
  br label %83

83:                                               ; preds = %78, %73
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #2

declare void @printLine(ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

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
  %10 = call ptr @strcpy(ptr noundef %9, ptr noundef @.str.4) #6
  br label %14

11:                                               ; preds = %0
  %12 = load ptr, ptr %1, align 8
  %13 = call ptr @strcpy(ptr noundef %12, ptr noundef @.str.4) #6
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
