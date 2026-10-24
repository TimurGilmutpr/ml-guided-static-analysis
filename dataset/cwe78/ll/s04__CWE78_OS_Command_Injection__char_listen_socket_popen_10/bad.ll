; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE78_OS_Command_Injection/s04/CWE78_OS_Command_Injection__char_listen_socket_popen_10.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE78_OS_Command_Injection/s04/CWE78_OS_Command_Injection__char_listen_socket_popen_10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@globalTrue = external global i32, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__char_listen_socket_popen_10_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %10 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 0
  store i8 108, ptr %10, align 16
  %11 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 1
  store i8 115, ptr %11, align 1
  %12 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 2
  store i8 32, ptr %12, align 2
  %13 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %13, ptr %1, align 8
  %14 = load i32, ptr @globalTrue, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %97

16:                                               ; preds = %0
  store i32 -1, ptr %6, align 4
  store i32 -1, ptr %7, align 4
  %17 = load ptr, ptr %1, align 8
  %18 = call i64 @strlen(ptr noundef %17) #6
  store i64 %18, ptr %8, align 8
  br label %19

19:                                               ; preds = %16
  %20 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %20, ptr %6, align 4
  %21 = load i32, ptr %6, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %84

24:                                               ; preds = %19
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %25 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %25, align 4
  %26 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %27 = getelementptr inbounds nuw %struct.in_addr, ptr %26, i32 0, i32 0
  store i32 0, ptr %27, align 4
  %28 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %29 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %28, ptr %29, align 2
  %30 = load i32, ptr %6, align 4
  %31 = call i32 @bind(i32 noundef %30, ptr noundef %4, i32 noundef 16) #7
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %84

34:                                               ; preds = %24
  %35 = load i32, ptr %6, align 4
  %36 = call i32 @listen(i32 noundef %35, i32 noundef 5) #7
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %84

39:                                               ; preds = %34
  %40 = load i32, ptr %6, align 4
  %41 = call i32 @accept(i32 noundef %40, ptr noundef null, ptr noundef null)
  store i32 %41, ptr %7, align 4
  %42 = load i32, ptr %7, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %84

45:                                               ; preds = %39
  %46 = load i32, ptr %7, align 4
  %47 = load ptr, ptr %1, align 8
  %48 = load i64, ptr %8, align 8
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 %48
  %50 = load i64, ptr %8, align 8
  %51 = sub i64 100, %50
  %52 = sub i64 %51, 1
  %53 = mul i64 1, %52
  %54 = call i64 @recv(i32 noundef %46, ptr noundef %49, i64 noundef %53, i32 noundef 0)
  %55 = trunc i64 %54 to i32
  store i32 %55, ptr %3, align 4
  %56 = load i32, ptr %3, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %61, label %58

58:                                               ; preds = %45
  %59 = load i32, ptr %3, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %45
  br label %84

62:                                               ; preds = %58
  %63 = load ptr, ptr %1, align 8
  %64 = load i64, ptr %8, align 8
  %65 = load i32, ptr %3, align 4
  %66 = sext i32 %65 to i64
  %67 = udiv i64 %66, 1
  %68 = add i64 %64, %67
  %69 = getelementptr inbounds nuw i8, ptr %63, i64 %68
  store i8 0, ptr %69, align 1
  %70 = load ptr, ptr %1, align 8
  %71 = call ptr @strchr(ptr noundef %70, i32 noundef 13) #6
  store ptr %71, ptr %5, align 8
  %72 = load ptr, ptr %5, align 8
  %73 = icmp ne ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load ptr, ptr %5, align 8
  store i8 0, ptr %75, align 1
  br label %76

76:                                               ; preds = %74, %62
  %77 = load ptr, ptr %1, align 8
  %78 = call ptr @strchr(ptr noundef %77, i32 noundef 10) #6
  store ptr %78, ptr %5, align 8
  %79 = load ptr, ptr %5, align 8
  %80 = icmp ne ptr %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load ptr, ptr %5, align 8
  store i8 0, ptr %82, align 1
  br label %83

83:                                               ; preds = %81, %76
  br label %84

84:                                               ; preds = %83, %61, %44, %38, %33, %23
  %85 = load i32, ptr %6, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, ptr %6, align 4
  %89 = call i32 @close(i32 noundef %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, ptr %7, align 4
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, ptr %7, align 4
  %95 = call i32 @close(i32 noundef %94)
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %0
  %98 = load ptr, ptr %1, align 8
  %99 = call noalias ptr @popen(ptr noundef %98, ptr noundef @.str)
  store ptr %99, ptr %9, align 8
  %100 = load ptr, ptr %9, align 8
  %101 = icmp ne ptr %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load ptr, ptr %9, align 8
  %104 = call i32 @pclose(ptr noundef %103)
  br label %105

105:                                              ; preds = %102, %97
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
declare ptr @strchr(ptr noundef, i32 noundef) #2

declare i32 @close(i32 noundef) #5

declare noalias ptr @popen(ptr noundef, ptr noundef) #5

declare i32 @pclose(ptr noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
