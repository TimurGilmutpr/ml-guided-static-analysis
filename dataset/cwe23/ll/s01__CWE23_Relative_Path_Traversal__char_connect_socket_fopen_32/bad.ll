; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s01/CWE23_Relative_Path_Traversal__char_connect_socket_fopen_32.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s01/CWE23_Relative_Path_Traversal__char_connect_socket_fopen_32.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN59CWE23_Relative_Path_Traversal__char_connect_socket_fopen_323badEv() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %1, ptr %2, align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 4096, i1 false)
  %13 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 0
  store i8 47, ptr %13, align 16
  %14 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 1
  store i8 116, ptr %14, align 1
  %15 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 2
  store i8 109, ptr %15, align 2
  %16 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 3
  store i8 112, ptr %16, align 1
  %17 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 4
  store i8 47, ptr %17, align 4
  %18 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 0
  store ptr %18, ptr %1, align 8
  %19 = load ptr, ptr %2, align 8
  %20 = load ptr, ptr %19, align 8
  store ptr %20, ptr %5, align 8
  store i32 -1, ptr %9, align 4
  %21 = load ptr, ptr %5, align 8
  %22 = call i64 @strlen(ptr noundef %21) #6
  store i64 %22, ptr %10, align 8
  br label %23

23:                                               ; preds = %0
  %24 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %24, ptr %9, align 4
  %25 = load i32, ptr %9, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %78

28:                                               ; preds = %23
  call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 16, i1 false)
  %29 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %7, i32 0, i32 0
  store i16 2, ptr %29, align 4
  %30 = call i32 @inet_addr(ptr noundef @.str) #7
  %31 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %7, i32 0, i32 2
  %32 = getelementptr inbounds nuw %struct.in_addr, ptr %31, i32 0, i32 0
  store i32 %30, ptr %32, align 4
  %33 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %34 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %7, i32 0, i32 1
  store i16 %33, ptr %34, align 2
  %35 = load i32, ptr %9, align 4
  %36 = call i32 @connect(i32 noundef %35, ptr noundef %7, i32 noundef 16)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %78

39:                                               ; preds = %28
  %40 = load i32, ptr %9, align 4
  %41 = load ptr, ptr %5, align 8
  %42 = load i64, ptr %10, align 8
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 %42
  %44 = load i64, ptr %10, align 8
  %45 = sub i64 4096, %44
  %46 = sub i64 %45, 1
  %47 = mul i64 1, %46
  %48 = call i64 @recv(i32 noundef %40, ptr noundef %43, i64 noundef %47, i32 noundef 0)
  %49 = trunc i64 %48 to i32
  store i32 %49, ptr %6, align 4
  %50 = load i32, ptr %6, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %55, label %52

52:                                               ; preds = %39
  %53 = load i32, ptr %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %39
  br label %78

56:                                               ; preds = %52
  %57 = load ptr, ptr %5, align 8
  %58 = load i64, ptr %10, align 8
  %59 = load i32, ptr %6, align 4
  %60 = sext i32 %59 to i64
  %61 = udiv i64 %60, 1
  %62 = add i64 %58, %61
  %63 = getelementptr inbounds nuw i8, ptr %57, i64 %62
  store i8 0, ptr %63, align 1
  %64 = load ptr, ptr %5, align 8
  %65 = call noundef ptr @strchr(ptr noundef %64, i32 noundef 13) #6
  store ptr %65, ptr %8, align 8
  %66 = load ptr, ptr %8, align 8
  %67 = icmp ne ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load ptr, ptr %8, align 8
  store i8 0, ptr %69, align 1
  br label %70

70:                                               ; preds = %68, %56
  %71 = load ptr, ptr %5, align 8
  %72 = call noundef ptr @strchr(ptr noundef %71, i32 noundef 10) #6
  store ptr %72, ptr %8, align 8
  %73 = load ptr, ptr %8, align 8
  %74 = icmp ne ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load ptr, ptr %8, align 8
  store i8 0, ptr %76, align 1
  br label %77

77:                                               ; preds = %75, %70
  br label %78

78:                                               ; preds = %77, %55, %38, %27
  %79 = load i32, ptr %9, align 4
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, ptr %9, align 4
  %83 = call i32 @close(i32 noundef %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load ptr, ptr %5, align 8
  %86 = load ptr, ptr %2, align 8
  store ptr %85, ptr %86, align 8
  %87 = load ptr, ptr %3, align 8
  %88 = load ptr, ptr %87, align 8
  store ptr %88, ptr %11, align 8
  store ptr null, ptr %12, align 8
  %89 = load ptr, ptr %11, align 8
  %90 = call noalias ptr @fopen(ptr noundef %89, ptr noundef @.str.1)
  store ptr %90, ptr %12, align 8
  %91 = load ptr, ptr %12, align 8
  %92 = icmp ne ptr %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load ptr, ptr %12, align 8
  %95 = call i32 @fclose(ptr noundef %94)
  br label %96

96:                                               ; preds = %93, %84
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @inet_addr(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #4

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) #5

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) #2

declare i32 @close(i32 noundef) #5

declare noalias ptr @fopen(ptr noundef, ptr noundef) #5

declare i32 @fclose(ptr noundef) #5

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
