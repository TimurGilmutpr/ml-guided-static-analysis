; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s02/CWE23_Relative_Path_Traversal__char_listen_socket_open_21.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s02/CWE23_Relative_Path_Traversal__char_listen_socket_open_21.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@_ZN57CWE23_Relative_Path_Traversal__char_listen_socket_open_21L9badStaticE = internal global i32 0, align 4

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN57CWE23_Relative_Path_Traversal__char_listen_socket_open_213badEv() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i32, align 4
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 4096, i1 false)
  %4 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 0
  store i8 47, ptr %4, align 16
  %5 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 1
  store i8 116, ptr %5, align 1
  %6 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 2
  store i8 109, ptr %6, align 2
  %7 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 3
  store i8 112, ptr %7, align 1
  %8 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 4
  store i8 47, ptr %8, align 4
  %9 = getelementptr inbounds [4096 x i8], ptr %2, i64 0, i64 0
  store ptr %9, ptr %1, align 8
  store i32 1, ptr @_ZN57CWE23_Relative_Path_Traversal__char_listen_socket_open_21L9badStaticE, align 4
  %10 = load ptr, ptr %1, align 8
  %11 = call noundef ptr @_ZN57CWE23_Relative_Path_Traversal__char_listen_socket_open_21L9badSourceEPc(ptr noundef %10)
  store ptr %11, ptr %1, align 8
  %12 = load ptr, ptr %1, align 8
  %13 = call i32 (ptr, i32, ...) @open(ptr noundef %12, i32 noundef 66, i32 noundef 384)
  store i32 %13, ptr %3, align 4
  %14 = load i32, ptr %3, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i32, ptr %3, align 4
  %18 = call i32 @close(i32 noundef %17)
  br label %19

19:                                               ; preds = %16, %0
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef ptr @_ZN57CWE23_Relative_Path_Traversal__char_listen_socket_open_21L9badSourceEPc(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %9 = load i32, ptr @_ZN57CWE23_Relative_Path_Traversal__char_listen_socket_open_21L9badStaticE, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %92

11:                                               ; preds = %1
  store i32 -1, ptr %6, align 4
  store i32 -1, ptr %7, align 4
  %12 = load ptr, ptr %2, align 8
  %13 = call i64 @strlen(ptr noundef %12) #6
  store i64 %13, ptr %8, align 8
  br label %14

14:                                               ; preds = %11
  %15 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %15, ptr %6, align 4
  %16 = load i32, ptr %6, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %79

19:                                               ; preds = %14
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %20 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %20, align 4
  %21 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %22 = getelementptr inbounds nuw %struct.in_addr, ptr %21, i32 0, i32 0
  store i32 0, ptr %22, align 4
  %23 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %24 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %23, ptr %24, align 2
  %25 = load i32, ptr %6, align 4
  %26 = call i32 @bind(i32 noundef %25, ptr noundef %4, i32 noundef 16) #7
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %79

29:                                               ; preds = %19
  %30 = load i32, ptr %6, align 4
  %31 = call i32 @listen(i32 noundef %30, i32 noundef 5) #7
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %79

34:                                               ; preds = %29
  %35 = load i32, ptr %6, align 4
  %36 = call i32 @accept(i32 noundef %35, ptr noundef null, ptr noundef null)
  store i32 %36, ptr %7, align 4
  %37 = load i32, ptr %7, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %79

40:                                               ; preds = %34
  %41 = load i32, ptr %7, align 4
  %42 = load ptr, ptr %2, align 8
  %43 = load i64, ptr %8, align 8
  %44 = getelementptr inbounds nuw i8, ptr %42, i64 %43
  %45 = load i64, ptr %8, align 8
  %46 = sub i64 4096, %45
  %47 = sub i64 %46, 1
  %48 = mul i64 1, %47
  %49 = call i64 @recv(i32 noundef %41, ptr noundef %44, i64 noundef %48, i32 noundef 0)
  %50 = trunc i64 %49 to i32
  store i32 %50, ptr %3, align 4
  %51 = load i32, ptr %3, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %56, label %53

53:                                               ; preds = %40
  %54 = load i32, ptr %3, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %40
  br label %79

57:                                               ; preds = %53
  %58 = load ptr, ptr %2, align 8
  %59 = load i64, ptr %8, align 8
  %60 = load i32, ptr %3, align 4
  %61 = sext i32 %60 to i64
  %62 = udiv i64 %61, 1
  %63 = add i64 %59, %62
  %64 = getelementptr inbounds nuw i8, ptr %58, i64 %63
  store i8 0, ptr %64, align 1
  %65 = load ptr, ptr %2, align 8
  %66 = call noundef ptr @strchr(ptr noundef %65, i32 noundef 13) #6
  store ptr %66, ptr %5, align 8
  %67 = load ptr, ptr %5, align 8
  %68 = icmp ne ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load ptr, ptr %5, align 8
  store i8 0, ptr %70, align 1
  br label %71

71:                                               ; preds = %69, %57
  %72 = load ptr, ptr %2, align 8
  %73 = call noundef ptr @strchr(ptr noundef %72, i32 noundef 10) #6
  store ptr %73, ptr %5, align 8
  %74 = load ptr, ptr %5, align 8
  %75 = icmp ne ptr %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load ptr, ptr %5, align 8
  store i8 0, ptr %77, align 1
  br label %78

78:                                               ; preds = %76, %71
  br label %79

79:                                               ; preds = %78, %56, %39, %33, %28, %18
  %80 = load i32, ptr %6, align 4
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, ptr %6, align 4
  %84 = call i32 @close(i32 noundef %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32, ptr %7, align 4
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, ptr %7, align 4
  %90 = call i32 @close(i32 noundef %89)
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %1
  %93 = load ptr, ptr %2, align 8
  ret ptr %93
}

declare i32 @open(ptr noundef, i32 noundef, ...) #2

declare i32 @close(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #5

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) #4

declare i32 @accept(i32 noundef, ptr noundef, ptr noundef) #2

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) #3

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
