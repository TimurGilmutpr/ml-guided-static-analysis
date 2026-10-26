; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s01/CWE23_Relative_Path_Traversal__char_environment_fopen_17.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s01/CWE23_Relative_Path_Traversal__char_environment_fopen_17.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN56CWE23_Relative_Path_Traversal__char_environment_fopen_173badEv() #0 {
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

13:                                               ; preds = %32, %0
  %14 = load i32, ptr %1, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = load ptr, ptr %2, align 8
  %18 = call i64 @strlen(ptr noundef %17) #5
  store i64 %18, ptr %4, align 8
  %19 = call ptr @getenv(ptr noundef @.str) #6
  store ptr %19, ptr %5, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load ptr, ptr %2, align 8
  %24 = load i64, ptr %4, align 8
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 %24
  %26 = load ptr, ptr %5, align 8
  %27 = load i64, ptr %4, align 8
  %28 = sub i64 4096, %27
  %29 = sub i64 %28, 1
  %30 = call ptr @strncat(ptr noundef %25, ptr noundef %26, i64 noundef %29) #6
  br label %31

31:                                               ; preds = %22, %16
  br label %32

32:                                               ; preds = %31
  %33 = load i32, ptr %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %1, align 4
  br label %13, !llvm.loop !6

35:                                               ; preds = %13
  store ptr null, ptr %6, align 8
  %36 = load ptr, ptr %2, align 8
  %37 = call noalias ptr @fopen(ptr noundef %36, ptr noundef @.str.1)
  store ptr %37, ptr %6, align 8
  %38 = load ptr, ptr %6, align 8
  %39 = icmp ne ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load ptr, ptr %6, align 8
  %42 = call i32 @fclose(ptr noundef %41)
  br label %43

43:                                               ; preds = %40, %35
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @strncat(ptr noundef, ptr noundef, i64 noundef) #3

declare noalias ptr @fopen(ptr noundef, ptr noundef) #4

declare i32 @fclose(ptr noundef) #4

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
