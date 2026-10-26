; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s01/CWE23_Relative_Path_Traversal__char_environment_fopen_45.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s01/CWE23_Relative_Path_Traversal__char_environment_fopen_45.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@_ZN56CWE23_Relative_Path_Traversal__char_environment_fopen_45L7badDataE = internal global ptr null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN56CWE23_Relative_Path_Traversal__char_environment_fopen_453badEv() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 4096, i1 false)
  %5 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 0
  store i8 47, ptr %5, align 16
  %6 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 1
  store i8 116, ptr %6, align 1
  %7 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 2
  store i8 109, ptr %7, align 2
  %8 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 3
  store i8 112, ptr %8, align 1
  %9 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 4
  store i8 47, ptr %9, align 4
  %10 = getelementptr inbounds [4096 x i8], ptr %2, i64 0, i64 0
  store ptr %10, ptr %1, align 8
  %11 = load ptr, ptr %1, align 8
  %12 = call i64 @strlen(ptr noundef %11) #5
  store i64 %12, ptr %3, align 8
  %13 = call ptr @getenv(ptr noundef @.str) #6
  store ptr %13, ptr %4, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %0
  %17 = load ptr, ptr %1, align 8
  %18 = load i64, ptr %3, align 8
  %19 = getelementptr inbounds nuw i8, ptr %17, i64 %18
  %20 = load ptr, ptr %4, align 8
  %21 = load i64, ptr %3, align 8
  %22 = sub i64 4096, %21
  %23 = sub i64 %22, 1
  %24 = call ptr @strncat(ptr noundef %19, ptr noundef %20, i64 noundef %23) #6
  br label %25

25:                                               ; preds = %16, %0
  %26 = load ptr, ptr %1, align 8
  store ptr %26, ptr @_ZN56CWE23_Relative_Path_Traversal__char_environment_fopen_45L7badDataE, align 8
  call void @_ZN56CWE23_Relative_Path_Traversal__char_environment_fopen_45L7badSinkEv()
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

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @_ZN56CWE23_Relative_Path_Traversal__char_environment_fopen_45L7badSinkEv() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @_ZN56CWE23_Relative_Path_Traversal__char_environment_fopen_45L7badDataE, align 8
  store ptr %3, ptr %1, align 8
  store ptr null, ptr %2, align 8
  %4 = load ptr, ptr %1, align 8
  %5 = call noalias ptr @fopen(ptr noundef %4, ptr noundef @.str.1)
  store ptr %5, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load ptr, ptr %2, align 8
  %10 = call i32 @fclose(ptr noundef %9)
  br label %11

11:                                               ; preds = %8, %0
  ret void
}

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
