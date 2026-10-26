; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s01/CWE23_Relative_Path_Traversal__char_console_fopen_32.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s01/CWE23_Relative_Path_Traversal__char_console_fopen_32.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN52CWE23_Relative_Path_Traversal__char_console_fopen_323badEv() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %1, ptr %2, align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 4096, i1 false)
  %9 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 0
  store i8 47, ptr %9, align 16
  %10 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 1
  store i8 116, ptr %10, align 1
  %11 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 2
  store i8 109, ptr %11, align 2
  %12 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 3
  store i8 112, ptr %12, align 1
  %13 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 4
  store i8 47, ptr %13, align 4
  %14 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 0
  store ptr %14, ptr %1, align 8
  %15 = load ptr, ptr %2, align 8
  %16 = load ptr, ptr %15, align 8
  store ptr %16, ptr %5, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = call i64 @strlen(ptr noundef %17) #4
  store i64 %18, ptr %6, align 8
  %19 = load i64, ptr %6, align 8
  %20 = sub i64 4096, %19
  %21 = icmp ugt i64 %20, 1
  br i1 %21, label %22, label %56

22:                                               ; preds = %0
  %23 = load ptr, ptr %5, align 8
  %24 = load i64, ptr %6, align 8
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 %24
  %26 = load i64, ptr %6, align 8
  %27 = sub i64 4096, %26
  %28 = trunc i64 %27 to i32
  %29 = load ptr, ptr @stdin, align 8
  %30 = call ptr @fgets(ptr noundef %25, i32 noundef %28, ptr noundef %29)
  %31 = icmp ne ptr %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %22
  %33 = load ptr, ptr %5, align 8
  %34 = call i64 @strlen(ptr noundef %33) #4
  store i64 %34, ptr %6, align 8
  %35 = load i64, ptr %6, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load ptr, ptr %5, align 8
  %39 = load i64, ptr %6, align 8
  %40 = sub i64 %39, 1
  %41 = getelementptr inbounds nuw i8, ptr %38, i64 %40
  %42 = load i8, ptr %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load ptr, ptr %5, align 8
  %47 = load i64, ptr %6, align 8
  %48 = sub i64 %47, 1
  %49 = getelementptr inbounds nuw i8, ptr %46, i64 %48
  store i8 0, ptr %49, align 1
  br label %50

50:                                               ; preds = %45, %37, %32
  br label %55

51:                                               ; preds = %22
  call void @printLine(ptr noundef @.str)
  %52 = load ptr, ptr %5, align 8
  %53 = load i64, ptr %6, align 8
  %54 = getelementptr inbounds nuw i8, ptr %52, i64 %53
  store i8 0, ptr %54, align 1
  br label %55

55:                                               ; preds = %51, %50
  br label %56

56:                                               ; preds = %55, %0
  %57 = load ptr, ptr %5, align 8
  %58 = load ptr, ptr %2, align 8
  store ptr %57, ptr %58, align 8
  %59 = load ptr, ptr %3, align 8
  %60 = load ptr, ptr %59, align 8
  store ptr %60, ptr %7, align 8
  store ptr null, ptr %8, align 8
  %61 = load ptr, ptr %7, align 8
  %62 = call noalias ptr @fopen(ptr noundef %61, ptr noundef @.str.1)
  store ptr %62, ptr %8, align 8
  %63 = load ptr, ptr %8, align 8
  %64 = icmp ne ptr %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load ptr, ptr %8, align 8
  %67 = call i32 @fclose(ptr noundef %66)
  br label %68

68:                                               ; preds = %65, %56
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
