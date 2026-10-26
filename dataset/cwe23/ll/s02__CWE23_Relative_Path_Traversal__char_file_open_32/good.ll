; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s02/CWE23_Relative_Path_Traversal__char_file_open_32.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s02/CWE23_Relative_Path_Traversal__char_file_open_32.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"file.txt\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN48CWE23_Relative_Path_Traversal__char_file_open_324goodEv() #0 {
  call void @_ZN48CWE23_Relative_Path_Traversal__char_file_open_32L7goodG2BEv()
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @_ZN48CWE23_Relative_Path_Traversal__char_file_open_32L7goodG2BEv() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %1, ptr %2, align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 4096, i1 false)
  %8 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 0
  store i8 47, ptr %8, align 16
  %9 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 1
  store i8 116, ptr %9, align 1
  %10 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 2
  store i8 109, ptr %10, align 2
  %11 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 3
  store i8 112, ptr %11, align 1
  %12 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 4
  store i8 47, ptr %12, align 4
  %13 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 0
  store ptr %13, ptr %1, align 8
  %14 = load ptr, ptr %2, align 8
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = call ptr @strcat(ptr noundef %16, ptr noundef @.str) #4
  %18 = load ptr, ptr %5, align 8
  %19 = load ptr, ptr %2, align 8
  store ptr %18, ptr %19, align 8
  %20 = load ptr, ptr %3, align 8
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %6, align 8
  %22 = load ptr, ptr %6, align 8
  %23 = call i32 (ptr, i32, ...) @open(ptr noundef %22, i32 noundef 66, i32 noundef 384)
  store i32 %23, ptr %7, align 4
  %24 = load i32, ptr %7, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %0
  %27 = load i32, ptr %7, align 4
  %28 = call i32 @close(i32 noundef %27)
  br label %29

29:                                               ; preds = %26, %0
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #2

declare i32 @open(ptr noundef, i32 noundef, ...) #3

declare i32 @close(i32 noundef) #3

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
