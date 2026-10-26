; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s02/CWE23_Relative_Path_Traversal__char_listen_socket_open_31.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s02/CWE23_Relative_Path_Traversal__char_listen_socket_open_31.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN57CWE23_Relative_Path_Traversal__char_listen_socket_open_313badEv() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 4096, i1 false)
  %12 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 0
  store i8 47, ptr %12, align 16
  %13 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 1
  store i8 116, ptr %13, align 1
  %14 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 2
  store i8 109, ptr %14, align 2
  %15 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 3
  store i8 112, ptr %15, align 1
  %16 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 4
  store i8 47, ptr %16, align 4
  %17 = getelementptr inbounds [4096 x i8], ptr %2, i64 0, i64 0
  store ptr %17, ptr %1, align 8
  store i32 -1, ptr %6, align 4
  store i32 -1, ptr %7, align 4
  %18 = load ptr, ptr %1, align 8
  %19 = call i64 @strlen(ptr noundef %18) #6
  store i64 %19, ptr %8, align 8
  br label %20

20:                                               ; preds = %0
  %21 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %21, ptr %6, align 4
  %22 = load i32, ptr %6, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %85

25:                                               ; preds = %20
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %26 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %26, align 4
  %27 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %28 = getelementptr inbounds nuw %struct.in_addr, ptr %27, i32 0, i32 0
  store i32 0, ptr %28, align 4
  %29 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %30 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %29, ptr %30, align 2
  %31 = load i32, ptr %6, align 4
  %32 = call i32 @bind(i32 noundef %31, ptr noundef %4, i32 noundef 16) #7
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %85

35:                                               ; preds = %25
  %36 = load i32, ptr %6, align 4
  %37 = call i32 @listen(i32 noundef %36, i32 noundef 5) #7
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %85

40:                                               ; preds = %35
  %41 = load i32, ptr %6, align 4
  %42 = call i32 @accept(i32 noundef %41, ptr noundef null, ptr noundef null)
  store i32 %42, ptr %7, align 4
  %43 = load i32, ptr %7, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %85

46:                                               ; preds = %40
  %47 = load i32, ptr %7, align 4
  %48 = load ptr, ptr %1, align 8
  %49 = load i64, ptr %8, align 8
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 %49
  %51 = load i64, ptr %8, align 8
  %52 = sub i64 4096, %51
  %53 = sub i64 %52, 1
  %54 = mul i64 1, %53
  %55 = call i64 @recv(i32 noundef %47, ptr noundef %50, i64 noundef %54, i32 noundef 0)
  %56 = trunc i64 %55 to i32
  store i32 %56, ptr %3, align 4
  %57 = load i32, ptr %3, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %62, label %59

59:                                               ; preds = %46
  %60 = load i32, ptr %3, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %46
  br label %85

63:                                               ; preds = %59
  %64 = load ptr, ptr %1, align 8
  %65 = load i64, ptr %8, align 8
  %66 = load i32, ptr %3, align 4
  %67 = sext i32 %66 to i64
  %68 = udiv i64 %67, 1
  %69 = add i64 %65, %68
  %70 = getelementptr inbounds nuw i8, ptr %64, i64 %69
  store i8 0, ptr %70, align 1
  %71 = load ptr, ptr %1, align 8
  %72 = call noundef ptr @strchr(ptr noundef %71, i32 noundef 13) #6
  store ptr %72, ptr %5, align 8
  %73 = load ptr, ptr %5, align 8
  %74 = icmp ne ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load ptr, ptr %5, align 8
  store i8 0, ptr %76, align 1
  br label %77

77:                                               ; preds = %75, %63
  %78 = load ptr, ptr %1, align 8
  %79 = call noundef ptr @strchr(ptr noundef %78, i32 noundef 10) #6
  store ptr %79, ptr %5, align 8
  %80 = load ptr, ptr %5, align 8
  %81 = icmp ne ptr %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load ptr, ptr %5, align 8
  store i8 0, ptr %83, align 1
  br label %84

84:                                               ; preds = %82, %77
  br label %85

85:                                               ; preds = %84, %62, %45, %39, %34, %24
  %86 = load i32, ptr %6, align 4
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, ptr %6, align 4
  %90 = call i32 @close(i32 noundef %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, ptr %7, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, ptr %7, align 4
  %96 = call i32 @close(i32 noundef %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load ptr, ptr %1, align 8
  store ptr %98, ptr %9, align 8
  %99 = load ptr, ptr %9, align 8
  store ptr %99, ptr %10, align 8
  %100 = load ptr, ptr %10, align 8
  %101 = call i32 (ptr, i32, ...) @open(ptr noundef %100, i32 noundef 66, i32 noundef 384)
  store i32 %101, ptr %11, align 4
  %102 = load i32, ptr %11, align 4
  %103 = icmp ne i32 %102, -1
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, ptr %11, align 4
  %106 = call i32 @close(i32 noundef %105)
  br label %107

107:                                              ; preds = %104, %97
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #4

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) #3

declare i32 @accept(i32 noundef, ptr noundef, ptr noundef) #5

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) #2

declare i32 @close(i32 noundef) #5

declare i32 @open(ptr noundef, i32 noundef, ...) #5

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
