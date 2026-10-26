; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s02/CWE23_Relative_Path_Traversal__char_file_fopen_17.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s02/CWE23_Relative_Path_Traversal__char_file_fopen_17.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN49CWE23_Relative_Path_Traversal__char_file_fopen_173badEv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 4096, i1 false)
  %7 = getelementptr inbounds [4096 x i8], ptr %3, i32 0, i32 0
  store i8 47, ptr %7, align 16
  %8 = getelementptr inbounds [4096 x i8], ptr %3, i32 0, i32 1
  store i8 116, ptr %8, align 1
  %9 = getelementptr inbounds [4096 x i8], ptr %3, i32 0, i32 2
  store i8 109, ptr %9, align 2
  %10 = getelementptr inbounds [4096 x i8], ptr %3, i32 0, i32 3
  store i8 112, ptr %10, align 1
  %11 = getelementptr inbounds [4096 x i8], ptr %3, i32 0, i32 4
  store i8 47, ptr %11, align 4
  %12 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 0
  store ptr %12, ptr %2, align 8
  store i32 0, ptr %1, align 4
  br label %13

13:                                               ; preds = %45, %0
  %14 = load i32, ptr %1, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %48

16:                                               ; preds = %13
  %17 = load ptr, ptr %2, align 8
  %18 = call i64 @strlen(ptr noundef %17) #4
  store i64 %18, ptr %4, align 8
  %19 = load i64, ptr %4, align 8
  %20 = sub i64 4096, %19
  %21 = icmp ugt i64 %20, 1
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = call noalias ptr @fopen(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %23, ptr %5, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = icmp ne ptr %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load ptr, ptr %2, align 8
  %28 = load i64, ptr %4, align 8
  %29 = getelementptr inbounds nuw i8, ptr %27, i64 %28
  %30 = load i64, ptr %4, align 8
  %31 = sub i64 4096, %30
  %32 = trunc i64 %31 to i32
  %33 = load ptr, ptr %5, align 8
  %34 = call ptr @fgets(ptr noundef %29, i32 noundef %32, ptr noundef %33)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  call void @printLine(ptr noundef @.str.2)
  %37 = load ptr, ptr %2, align 8
  %38 = load i64, ptr %4, align 8
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 %38
  store i8 0, ptr %39, align 1
  br label %40

40:                                               ; preds = %36, %26
  %41 = load ptr, ptr %5, align 8
  %42 = call i32 @fclose(ptr noundef %41)
  br label %43

43:                                               ; preds = %40, %22
  br label %44

44:                                               ; preds = %43, %16
  br label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %1, align 4
  br label %13, !llvm.loop !6

48:                                               ; preds = %13
  store ptr null, ptr %6, align 8
  %49 = load ptr, ptr %2, align 8
  %50 = call noalias ptr @fopen(ptr noundef %49, ptr noundef @.str.3)
  store ptr %50, ptr %6, align 8
  %51 = load ptr, ptr %6, align 8
  %52 = icmp ne ptr %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load ptr, ptr %6, align 8
  %55 = call i32 @fclose(ptr noundef %54)
  br label %56

56:                                               ; preds = %53, %48
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

declare noalias ptr @fopen(ptr noundef, ptr noundef) #3

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #3

declare void @printLine(ptr noundef) #3

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
