; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE23_Relative_Path_Traversal/s02/CWE23_Relative_Path_Traversal__char_listen_socket_open_32.cpp'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE23_Relative_Path_Traversal/s02/CWE23_Relative_Path_Traversal__char_listen_socket_open_32.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN57CWE23_Relative_Path_Traversal__char_listen_socket_open_323badEv() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  store ptr %1, ptr %2, align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 4096, i1 false)
  %14 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 0
  store i8 47, ptr %14, align 16
  %15 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 1
  store i8 116, ptr %15, align 1
  %16 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 2
  store i8 109, ptr %16, align 2
  %17 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 3
  store i8 112, ptr %17, align 1
  %18 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 4
  store i8 47, ptr %18, align 4
  %19 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 0
  store ptr %19, ptr %1, align 8
  %20 = load ptr, ptr %2, align 8
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %5, align 8
  store i32 -1, ptr %9, align 4
  store i32 -1, ptr %10, align 4
  %22 = load ptr, ptr %5, align 8
  %23 = call i64 @strlen(ptr noundef %22) #6
  store i64 %23, ptr %11, align 8
  br label %24

24:                                               ; preds = %0
  %25 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %25, ptr %9, align 4
  %26 = load i32, ptr %9, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %89

29:                                               ; preds = %24
  call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 16, i1 false)
  %30 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %7, i32 0, i32 0
  store i16 2, ptr %30, align 4
  %31 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %7, i32 0, i32 2
  %32 = getelementptr inbounds nuw %struct.in_addr, ptr %31, i32 0, i32 0
  store i32 0, ptr %32, align 4
  %33 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %34 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %7, i32 0, i32 1
  store i16 %33, ptr %34, align 2
  %35 = load i32, ptr %9, align 4
  %36 = call i32 @bind(i32 noundef %35, ptr noundef %7, i32 noundef 16) #7
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %89

39:                                               ; preds = %29
  %40 = load i32, ptr %9, align 4
  %41 = call i32 @listen(i32 noundef %40, i32 noundef 5) #7
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %89

44:                                               ; preds = %39
  %45 = load i32, ptr %9, align 4
  %46 = call i32 @accept(i32 noundef %45, ptr noundef null, ptr noundef null)
  store i32 %46, ptr %10, align 4
  %47 = load i32, ptr %10, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %89

50:                                               ; preds = %44
  %51 = load i32, ptr %10, align 4
  %52 = load ptr, ptr %5, align 8
  %53 = load i64, ptr %11, align 8
  %54 = getelementptr inbounds nuw i8, ptr %52, i64 %53
  %55 = load i64, ptr %11, align 8
  %56 = sub i64 4096, %55
  %57 = sub i64 %56, 1
  %58 = mul i64 1, %57
  %59 = call i64 @recv(i32 noundef %51, ptr noundef %54, i64 noundef %58, i32 noundef 0)
  %60 = trunc i64 %59 to i32
  store i32 %60, ptr %6, align 4
  %61 = load i32, ptr %6, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %66, label %63

63:                                               ; preds = %50
  %64 = load i32, ptr %6, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %50
  br label %89

67:                                               ; preds = %63
  %68 = load ptr, ptr %5, align 8
  %69 = load i64, ptr %11, align 8
  %70 = load i32, ptr %6, align 4
  %71 = sext i32 %70 to i64
  %72 = udiv i64 %71, 1
  %73 = add i64 %69, %72
  %74 = getelementptr inbounds nuw i8, ptr %68, i64 %73
  store i8 0, ptr %74, align 1
  %75 = load ptr, ptr %5, align 8
  %76 = call noundef ptr @strchr(ptr noundef %75, i32 noundef 13) #6
  store ptr %76, ptr %8, align 8
  %77 = load ptr, ptr %8, align 8
  %78 = icmp ne ptr %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load ptr, ptr %8, align 8
  store i8 0, ptr %80, align 1
  br label %81

81:                                               ; preds = %79, %67
  %82 = load ptr, ptr %5, align 8
  %83 = call noundef ptr @strchr(ptr noundef %82, i32 noundef 10) #6
  store ptr %83, ptr %8, align 8
  %84 = load ptr, ptr %8, align 8
  %85 = icmp ne ptr %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load ptr, ptr %8, align 8
  store i8 0, ptr %87, align 1
  br label %88

88:                                               ; preds = %86, %81
  br label %89

89:                                               ; preds = %88, %66, %49, %43, %38, %28
  %90 = load i32, ptr %9, align 4
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, ptr %9, align 4
  %94 = call i32 @close(i32 noundef %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, ptr %10, align 4
  %97 = icmp ne i32 %96, -1
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, ptr %10, align 4
  %100 = call i32 @close(i32 noundef %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load ptr, ptr %5, align 8
  %103 = load ptr, ptr %2, align 8
  store ptr %102, ptr %103, align 8
  %104 = load ptr, ptr %3, align 8
  %105 = load ptr, ptr %104, align 8
  store ptr %105, ptr %12, align 8
  %106 = load ptr, ptr %12, align 8
  %107 = call i32 (ptr, i32, ...) @open(ptr noundef %106, i32 noundef 66, i32 noundef 384)
  store i32 %107, ptr %13, align 4
  %108 = load i32, ptr %13, align 4
  %109 = icmp ne i32 %108, -1
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load i32, ptr %13, align 4
  %112 = call i32 @close(i32 noundef %111)
  br label %113

113:                                              ; preds = %110, %101
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
