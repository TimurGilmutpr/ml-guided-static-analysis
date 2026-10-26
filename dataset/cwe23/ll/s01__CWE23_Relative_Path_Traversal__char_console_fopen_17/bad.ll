; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s01/CWE23_Relative_Path_Traversal__char_console_fopen_17.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s01/CWE23_Relative_Path_Traversal__char_console_fopen_17.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN52CWE23_Relative_Path_Traversal__char_console_fopen_173badEv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 4096, i1 false)
  %6 = getelementptr inbounds [4096 x i8], ptr %3, i32 0, i32 0
  store i8 47, ptr %6, align 16
  %7 = getelementptr inbounds [4096 x i8], ptr %3, i32 0, i32 1
  store i8 116, ptr %7, align 1
  %8 = getelementptr inbounds [4096 x i8], ptr %3, i32 0, i32 2
  store i8 109, ptr %8, align 2
  %9 = getelementptr inbounds [4096 x i8], ptr %3, i32 0, i32 3
  store i8 112, ptr %9, align 1
  %10 = getelementptr inbounds [4096 x i8], ptr %3, i32 0, i32 4
  store i8 47, ptr %10, align 4
  %11 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 0
  store ptr %11, ptr %2, align 8
  store i32 0, ptr %1, align 4
  br label %12

12:                                               ; preds = %56, %0
  %13 = load i32, ptr %1, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %59

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 8
  %17 = call i64 @strlen(ptr noundef %16) #4
  store i64 %17, ptr %4, align 8
  %18 = load i64, ptr %4, align 8
  %19 = sub i64 4096, %18
  %20 = icmp ugt i64 %19, 1
  br i1 %20, label %21, label %55

21:                                               ; preds = %15
  %22 = load ptr, ptr %2, align 8
  %23 = load i64, ptr %4, align 8
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 %23
  %25 = load i64, ptr %4, align 8
  %26 = sub i64 4096, %25
  %27 = trunc i64 %26 to i32
  %28 = load ptr, ptr @stdin, align 8
  %29 = call ptr @fgets(ptr noundef %24, i32 noundef %27, ptr noundef %28)
  %30 = icmp ne ptr %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %21
  %32 = load ptr, ptr %2, align 8
  %33 = call i64 @strlen(ptr noundef %32) #4
  store i64 %33, ptr %4, align 8
  %34 = load i64, ptr %4, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load ptr, ptr %2, align 8
  %38 = load i64, ptr %4, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 %39
  %41 = load i8, ptr %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 10
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load ptr, ptr %2, align 8
  %46 = load i64, ptr %4, align 8
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 %47
  store i8 0, ptr %48, align 1
  br label %49

49:                                               ; preds = %44, %36, %31
  br label %54

50:                                               ; preds = %21
  call void @printLine(ptr noundef @.str)
  %51 = load ptr, ptr %2, align 8
  %52 = load i64, ptr %4, align 8
  %53 = getelementptr inbounds nuw i8, ptr %51, i64 %52
  store i8 0, ptr %53, align 1
  br label %54

54:                                               ; preds = %50, %49
  br label %55

55:                                               ; preds = %54, %15
  br label %56

56:                                               ; preds = %55
  %57 = load i32, ptr %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %1, align 4
  br label %12, !llvm.loop !6

59:                                               ; preds = %12
  store ptr null, ptr %5, align 8
  %60 = load ptr, ptr %2, align 8
  %61 = call noalias ptr @fopen(ptr noundef %60, ptr noundef @.str.1)
  store ptr %61, ptr %5, align 8
  %62 = load ptr, ptr %5, align 8
  %63 = icmp ne ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load ptr, ptr %5, align 8
  %66 = call i32 @fclose(ptr noundef %65)
  br label %67

67:                                               ; preds = %64, %59
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #3

declare void @printLine(ptr noundef) #3

declare noalias ptr @fopen(ptr noundef, ptr noundef) #3

declare i32 @fclose(ptr noundef) #3

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) }

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
