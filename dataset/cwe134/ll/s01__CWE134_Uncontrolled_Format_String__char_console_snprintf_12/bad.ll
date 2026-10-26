; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s01/CWE134_Uncontrolled_Format_String__char_console_snprintf_12.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s01/CWE134_Uncontrolled_Format_String__char_console_snprintf_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_snprintf_12_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %6 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %6, ptr %1, align 8
  %7 = call i32 (...) @globalReturnsTrueOrFalse()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %50

9:                                                ; preds = %0
  %10 = load ptr, ptr %1, align 8
  %11 = call i64 @strlen(ptr noundef %10) #5
  store i64 %11, ptr %3, align 8
  %12 = load i64, ptr %3, align 8
  %13 = sub i64 100, %12
  %14 = icmp ugt i64 %13, 1
  br i1 %14, label %15, label %49

15:                                               ; preds = %9
  %16 = load ptr, ptr %1, align 8
  %17 = load i64, ptr %3, align 8
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 %17
  %19 = load i64, ptr %3, align 8
  %20 = sub i64 100, %19
  %21 = trunc i64 %20 to i32
  %22 = load ptr, ptr @stdin, align 8
  %23 = call ptr @fgets(ptr noundef %18, i32 noundef %21, ptr noundef %22)
  %24 = icmp ne ptr %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %15
  %26 = load ptr, ptr %1, align 8
  %27 = call i64 @strlen(ptr noundef %26) #5
  store i64 %27, ptr %3, align 8
  %28 = load i64, ptr %3, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load ptr, ptr %1, align 8
  %32 = load i64, ptr %3, align 8
  %33 = sub i64 %32, 1
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 %33
  %35 = load i8, ptr %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load ptr, ptr %1, align 8
  %40 = load i64, ptr %3, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds nuw i8, ptr %39, i64 %41
  store i8 0, ptr %42, align 1
  br label %43

43:                                               ; preds = %38, %30, %25
  br label %48

44:                                               ; preds = %15
  call void @printLine(ptr noundef @.str)
  %45 = load ptr, ptr %1, align 8
  %46 = load i64, ptr %3, align 8
  %47 = getelementptr inbounds nuw i8, ptr %45, i64 %46
  store i8 0, ptr %47, align 1
  br label %48

48:                                               ; preds = %44, %43
  br label %49

49:                                               ; preds = %48, %9
  br label %53

50:                                               ; preds = %0
  %51 = load ptr, ptr %1, align 8
  %52 = call ptr @strcpy(ptr noundef %51, ptr noundef @.str.1) #6
  br label %53

53:                                               ; preds = %50, %49
  %54 = call i32 (...) @globalReturnsTrueOrFalse()
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 100, i1 false)
  %57 = getelementptr inbounds [100 x i8], ptr %4, i64 0, i64 0
  %58 = load ptr, ptr %1, align 8
  %59 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %57, i64 noundef 99, ptr noundef %58) #6
  %60 = getelementptr inbounds [100 x i8], ptr %4, i64 0, i64 0
  call void @printLine(ptr noundef %60)
  br label %66

61:                                               ; preds = %53
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 100, i1 false)
  %62 = getelementptr inbounds [100 x i8], ptr %5, i64 0, i64 0
  %63 = load ptr, ptr %1, align 8
  %64 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %62, i64 noundef 99, ptr noundef @.str.2, ptr noundef %63) #6
  %65 = getelementptr inbounds [100 x i8], ptr %5, i64 0, i64 0
  call void @printLine(ptr noundef %65)
  br label %66

66:                                               ; preds = %61, %56
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
declare ptr @strcpy(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

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
