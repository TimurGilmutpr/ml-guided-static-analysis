; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s01/CWE23_Relative_Path_Traversal__char_connect_socket_open_31.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s01/CWE23_Relative_Path_Traversal__char_connect_socket_open_31.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN58CWE23_Relative_Path_Traversal__char_connect_socket_open_313badEv() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 4096, i1 false)
  %11 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 0
  store i8 47, ptr %11, align 16
  %12 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 1
  store i8 116, ptr %12, align 1
  %13 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 2
  store i8 109, ptr %13, align 2
  %14 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 3
  store i8 112, ptr %14, align 1
  %15 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 4
  store i8 47, ptr %15, align 4
  %16 = getelementptr inbounds [4096 x i8], ptr %2, i64 0, i64 0
  store ptr %16, ptr %1, align 8
  store i32 -1, ptr %6, align 4
  %17 = load ptr, ptr %1, align 8
  %18 = call i64 @strlen(ptr noundef %17) #6
  store i64 %18, ptr %7, align 8
  br label %19

19:                                               ; preds = %0
  %20 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %20, ptr %6, align 4
  %21 = load i32, ptr %6, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %74

24:                                               ; preds = %19
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %25 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %25, align 4
  %26 = call i32 @inet_addr(ptr noundef @.str) #7
  %27 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %28 = getelementptr inbounds nuw %struct.in_addr, ptr %27, i32 0, i32 0
  store i32 %26, ptr %28, align 4
  %29 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %30 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %29, ptr %30, align 2
  %31 = load i32, ptr %6, align 4
  %32 = call i32 @connect(i32 noundef %31, ptr noundef %4, i32 noundef 16)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %74

35:                                               ; preds = %24
  %36 = load i32, ptr %6, align 4
  %37 = load ptr, ptr %1, align 8
  %38 = load i64, ptr %7, align 8
  %39 = getelementptr inbounds nuw i8, ptr %37, i64 %38
  %40 = load i64, ptr %7, align 8
  %41 = sub i64 4096, %40
  %42 = sub i64 %41, 1
  %43 = mul i64 1, %42
  %44 = call i64 @recv(i32 noundef %36, ptr noundef %39, i64 noundef %43, i32 noundef 0)
  %45 = trunc i64 %44 to i32
  store i32 %45, ptr %3, align 4
  %46 = load i32, ptr %3, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %51, label %48

48:                                               ; preds = %35
  %49 = load i32, ptr %3, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %35
  br label %74

52:                                               ; preds = %48
  %53 = load ptr, ptr %1, align 8
  %54 = load i64, ptr %7, align 8
  %55 = load i32, ptr %3, align 4
  %56 = sext i32 %55 to i64
  %57 = udiv i64 %56, 1
  %58 = add i64 %54, %57
  %59 = getelementptr inbounds nuw i8, ptr %53, i64 %58
  store i8 0, ptr %59, align 1
  %60 = load ptr, ptr %1, align 8
  %61 = call noundef ptr @strchr(ptr noundef %60, i32 noundef 13) #6
  store ptr %61, ptr %5, align 8
  %62 = load ptr, ptr %5, align 8
  %63 = icmp ne ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load ptr, ptr %5, align 8
  store i8 0, ptr %65, align 1
  br label %66

66:                                               ; preds = %64, %52
  %67 = load ptr, ptr %1, align 8
  %68 = call noundef ptr @strchr(ptr noundef %67, i32 noundef 10) #6
  store ptr %68, ptr %5, align 8
  %69 = load ptr, ptr %5, align 8
  %70 = icmp ne ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load ptr, ptr %5, align 8
  store i8 0, ptr %72, align 1
  br label %73

73:                                               ; preds = %71, %66
  br label %74

74:                                               ; preds = %73, %51, %34, %23
  %75 = load i32, ptr %6, align 4
  %76 = icmp ne i32 %75, -1
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, ptr %6, align 4
  %79 = call i32 @close(i32 noundef %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load ptr, ptr %1, align 8
  store ptr %81, ptr %8, align 8
  %82 = load ptr, ptr %8, align 8
  store ptr %82, ptr %9, align 8
  %83 = load ptr, ptr %9, align 8
  %84 = call i32 (ptr, i32, ...) @open(ptr noundef %83, i32 noundef 66, i32 noundef 384)
  store i32 %84, ptr %10, align 4
  %85 = load i32, ptr %10, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, ptr %10, align 4
  %89 = call i32 @close(i32 noundef %88)
  br label %90

90:                                               ; preds = %87, %80
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
