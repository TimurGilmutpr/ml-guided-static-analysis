; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s01/CWE23_Relative_Path_Traversal__char_connect_socket_fopen_08.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s01/CWE23_Relative_Path_Traversal__char_connect_socket_fopen_08.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN59CWE23_Relative_Path_Traversal__char_connect_socket_fopen_083badEv() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 4096, i1 false)
  %9 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 0
  store i8 47, ptr %9, align 16
  %10 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 1
  store i8 116, ptr %10, align 1
  %11 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 2
  store i8 109, ptr %11, align 2
  %12 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 3
  store i8 112, ptr %12, align 1
  %13 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 4
  store i8 47, ptr %13, align 4
  %14 = getelementptr inbounds [4096 x i8], ptr %2, i64 0, i64 0
  store ptr %14, ptr %1, align 8
  %15 = call noundef i32 @_ZL17staticReturnsTruev()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %82

17:                                               ; preds = %0
  store i32 -1, ptr %6, align 4
  %18 = load ptr, ptr %1, align 8
  %19 = call i64 @strlen(ptr noundef %18) #7
  store i64 %19, ptr %7, align 8
  br label %20

20:                                               ; preds = %17
  %21 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #8
  store i32 %21, ptr %6, align 4
  %22 = load i32, ptr %6, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %75

25:                                               ; preds = %20
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %26 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %26, align 4
  %27 = call i32 @inet_addr(ptr noundef @.str) #8
  %28 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %29 = getelementptr inbounds nuw %struct.in_addr, ptr %28, i32 0, i32 0
  store i32 %27, ptr %29, align 4
  %30 = call zeroext i16 @htons(i16 noundef zeroext 27015) #9
  %31 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %30, ptr %31, align 2
  %32 = load i32, ptr %6, align 4
  %33 = call i32 @connect(i32 noundef %32, ptr noundef %4, i32 noundef 16)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %75

36:                                               ; preds = %25
  %37 = load i32, ptr %6, align 4
  %38 = load ptr, ptr %1, align 8
  %39 = load i64, ptr %7, align 8
  %40 = getelementptr inbounds nuw i8, ptr %38, i64 %39
  %41 = load i64, ptr %7, align 8
  %42 = sub i64 4096, %41
  %43 = sub i64 %42, 1
  %44 = mul i64 1, %43
  %45 = call i64 @recv(i32 noundef %37, ptr noundef %40, i64 noundef %44, i32 noundef 0)
  %46 = trunc i64 %45 to i32
  store i32 %46, ptr %3, align 4
  %47 = load i32, ptr %3, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %52, label %49

49:                                               ; preds = %36
  %50 = load i32, ptr %3, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %36
  br label %75

53:                                               ; preds = %49
  %54 = load ptr, ptr %1, align 8
  %55 = load i64, ptr %7, align 8
  %56 = load i32, ptr %3, align 4
  %57 = sext i32 %56 to i64
  %58 = udiv i64 %57, 1
  %59 = add i64 %55, %58
  %60 = getelementptr inbounds nuw i8, ptr %54, i64 %59
  store i8 0, ptr %60, align 1
  %61 = load ptr, ptr %1, align 8
  %62 = call noundef ptr @strchr(ptr noundef %61, i32 noundef 13) #7
  store ptr %62, ptr %5, align 8
  %63 = load ptr, ptr %5, align 8
  %64 = icmp ne ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load ptr, ptr %5, align 8
  store i8 0, ptr %66, align 1
  br label %67

67:                                               ; preds = %65, %53
  %68 = load ptr, ptr %1, align 8
  %69 = call noundef ptr @strchr(ptr noundef %68, i32 noundef 10) #7
  store ptr %69, ptr %5, align 8
  %70 = load ptr, ptr %5, align 8
  %71 = icmp ne ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load ptr, ptr %5, align 8
  store i8 0, ptr %73, align 1
  br label %74

74:                                               ; preds = %72, %67
  br label %75

75:                                               ; preds = %74, %52, %35, %24
  %76 = load i32, ptr %6, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, ptr %6, align 4
  %80 = call i32 @close(i32 noundef %79)
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %0
  store ptr null, ptr %8, align 8
  %83 = load ptr, ptr %1, align 8
  %84 = call noalias ptr @fopen(ptr noundef %83, ptr noundef @.str.1)
  store ptr %84, ptr %8, align 8
  %85 = load ptr, ptr %8, align 8
  %86 = icmp ne ptr %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load ptr, ptr %8, align 8
  %89 = call i32 @fclose(ptr noundef %88)
  br label %90

90:                                               ; preds = %87, %82
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef i32 @_ZL17staticReturnsTruev() #2 {
  ret i32 1
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @inet_addr(ptr noundef) #4

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #5

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) #6

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) #3

declare i32 @close(i32 noundef) #6

declare noalias ptr @fopen(ptr noundef, ptr noundef) #6

declare i32 @fclose(ptr noundef) #6

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
