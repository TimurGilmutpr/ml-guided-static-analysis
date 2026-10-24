; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s01/CWE134_Uncontrolled_Format_String__char_connect_socket_snprintf_12.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s01/CWE134_Uncontrolled_Format_String__char_connect_socket_snprintf_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_connect_socket_snprintf_12_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [100 x i8], align 16
  %14 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %15 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %15, ptr %1, align 8
  %16 = call i32 (...) @globalReturnsTrueOrFalse()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %83

18:                                               ; preds = %0
  store i32 -1, ptr %6, align 4
  %19 = load ptr, ptr %1, align 8
  %20 = call i64 @strlen(ptr noundef %19) #6
  store i64 %20, ptr %7, align 8
  br label %21

21:                                               ; preds = %18
  %22 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %22, ptr %6, align 4
  %23 = load i32, ptr %6, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %76

26:                                               ; preds = %21
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %27 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %27, align 4
  %28 = call i32 @inet_addr(ptr noundef @.str) #7
  %29 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %30 = getelementptr inbounds nuw %struct.in_addr, ptr %29, i32 0, i32 0
  store i32 %28, ptr %30, align 4
  %31 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %32 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %31, ptr %32, align 2
  %33 = load i32, ptr %6, align 4
  %34 = call i32 @connect(i32 noundef %33, ptr noundef %4, i32 noundef 16)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %76

37:                                               ; preds = %26
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %1, align 8
  %40 = load i64, ptr %7, align 8
  %41 = getelementptr inbounds nuw i8, ptr %39, i64 %40
  %42 = load i64, ptr %7, align 8
  %43 = sub i64 100, %42
  %44 = sub i64 %43, 1
  %45 = mul i64 1, %44
  %46 = call i64 @recv(i32 noundef %38, ptr noundef %41, i64 noundef %45, i32 noundef 0)
  %47 = trunc i64 %46 to i32
  store i32 %47, ptr %3, align 4
  %48 = load i32, ptr %3, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %53, label %50

50:                                               ; preds = %37
  %51 = load i32, ptr %3, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %37
  br label %76

54:                                               ; preds = %50
  %55 = load ptr, ptr %1, align 8
  %56 = load i64, ptr %7, align 8
  %57 = load i32, ptr %3, align 4
  %58 = sext i32 %57 to i64
  %59 = udiv i64 %58, 1
  %60 = add i64 %56, %59
  %61 = getelementptr inbounds nuw i8, ptr %55, i64 %60
  store i8 0, ptr %61, align 1
  %62 = load ptr, ptr %1, align 8
  %63 = call ptr @strchr(ptr noundef %62, i32 noundef 13) #6
  store ptr %63, ptr %5, align 8
  %64 = load ptr, ptr %5, align 8
  %65 = icmp ne ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load ptr, ptr %5, align 8
  store i8 0, ptr %67, align 1
  br label %68

68:                                               ; preds = %66, %54
  %69 = load ptr, ptr %1, align 8
  %70 = call ptr @strchr(ptr noundef %69, i32 noundef 10) #6
  store ptr %70, ptr %5, align 8
  %71 = load ptr, ptr %5, align 8
  %72 = icmp ne ptr %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load ptr, ptr %5, align 8
  store i8 0, ptr %74, align 1
  br label %75

75:                                               ; preds = %73, %68
  br label %76

76:                                               ; preds = %75, %53, %36, %25
  %77 = load i32, ptr %6, align 4
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, ptr %6, align 4
  %81 = call i32 @close(i32 noundef %80)
  br label %82

82:                                               ; preds = %79, %76
  br label %148

83:                                               ; preds = %0
  store i32 -1, ptr %11, align 4
  %84 = load ptr, ptr %1, align 8
  %85 = call i64 @strlen(ptr noundef %84) #6
  store i64 %85, ptr %12, align 8
  br label %86

86:                                               ; preds = %83
  %87 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %87, ptr %11, align 4
  %88 = load i32, ptr %11, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %141

91:                                               ; preds = %86
  call void @llvm.memset.p0.i64(ptr align 4 %9, i8 0, i64 16, i1 false)
  %92 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %9, i32 0, i32 0
  store i16 2, ptr %92, align 4
  %93 = call i32 @inet_addr(ptr noundef @.str) #7
  %94 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %9, i32 0, i32 2
  %95 = getelementptr inbounds nuw %struct.in_addr, ptr %94, i32 0, i32 0
  store i32 %93, ptr %95, align 4
  %96 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %97 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %9, i32 0, i32 1
  store i16 %96, ptr %97, align 2
  %98 = load i32, ptr %11, align 4
  %99 = call i32 @connect(i32 noundef %98, ptr noundef %9, i32 noundef 16)
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  br label %141

102:                                              ; preds = %91
  %103 = load i32, ptr %11, align 4
  %104 = load ptr, ptr %1, align 8
  %105 = load i64, ptr %12, align 8
  %106 = getelementptr inbounds nuw i8, ptr %104, i64 %105
  %107 = load i64, ptr %12, align 8
  %108 = sub i64 100, %107
  %109 = sub i64 %108, 1
  %110 = mul i64 1, %109
  %111 = call i64 @recv(i32 noundef %103, ptr noundef %106, i64 noundef %110, i32 noundef 0)
  %112 = trunc i64 %111 to i32
  store i32 %112, ptr %8, align 4
  %113 = load i32, ptr %8, align 4
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %118, label %115

115:                                              ; preds = %102
  %116 = load i32, ptr %8, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115, %102
  br label %141

119:                                              ; preds = %115
  %120 = load ptr, ptr %1, align 8
  %121 = load i64, ptr %12, align 8
  %122 = load i32, ptr %8, align 4
  %123 = sext i32 %122 to i64
  %124 = udiv i64 %123, 1
  %125 = add i64 %121, %124
  %126 = getelementptr inbounds nuw i8, ptr %120, i64 %125
  store i8 0, ptr %126, align 1
  %127 = load ptr, ptr %1, align 8
  %128 = call ptr @strchr(ptr noundef %127, i32 noundef 13) #6
  store ptr %128, ptr %10, align 8
  %129 = load ptr, ptr %10, align 8
  %130 = icmp ne ptr %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %119
  %132 = load ptr, ptr %10, align 8
  store i8 0, ptr %132, align 1
  br label %133

133:                                              ; preds = %131, %119
  %134 = load ptr, ptr %1, align 8
  %135 = call ptr @strchr(ptr noundef %134, i32 noundef 10) #6
  store ptr %135, ptr %10, align 8
  %136 = load ptr, ptr %10, align 8
  %137 = icmp ne ptr %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load ptr, ptr %10, align 8
  store i8 0, ptr %139, align 1
  br label %140

140:                                              ; preds = %138, %133
  br label %141

141:                                              ; preds = %140, %118, %101, %90
  %142 = load i32, ptr %11, align 4
  %143 = icmp ne i32 %142, -1
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, ptr %11, align 4
  %146 = call i32 @close(i32 noundef %145)
  br label %147

147:                                              ; preds = %144, %141
  br label %148

148:                                              ; preds = %147, %82
  %149 = call i32 (...) @globalReturnsTrueOrFalse()
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  call void @llvm.memset.p0.i64(ptr align 16 %13, i8 0, i64 100, i1 false)
  %152 = getelementptr inbounds [100 x i8], ptr %13, i64 0, i64 0
  %153 = load ptr, ptr %1, align 8
  %154 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %152, i64 noundef 99, ptr noundef @.str.1, ptr noundef %153) #7
  %155 = getelementptr inbounds [100 x i8], ptr %13, i64 0, i64 0
  call void @printLine(ptr noundef %155)
  br label %161

156:                                              ; preds = %148
  call void @llvm.memset.p0.i64(ptr align 16 %14, i8 0, i64 100, i1 false)
  %157 = getelementptr inbounds [100 x i8], ptr %14, i64 0, i64 0
  %158 = load ptr, ptr %1, align 8
  %159 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %157, i64 noundef 99, ptr noundef @.str.1, ptr noundef %158) #7
  %160 = getelementptr inbounds [100 x i8], ptr %14, i64 0, i64 0
  call void @printLine(ptr noundef %160)
  br label %161

161:                                              ; preds = %156, %151
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind
declare i32 @inet_addr(ptr noundef) #4

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #5

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) #2

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #3

declare i32 @close(i32 noundef) #2

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

declare void @printLine(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %5, ptr %1, align 8
  %6 = call i32 (...) @globalReturnsTrueOrFalse()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load ptr, ptr %1, align 8
  %10 = call ptr @strcpy(ptr noundef %9, ptr noundef @.str.2) #7
  br label %14

11:                                               ; preds = %0
  %12 = load ptr, ptr %1, align 8
  %13 = call ptr @strcpy(ptr noundef %12, ptr noundef @.str.2) #7
  br label %14

14:                                               ; preds = %11, %8
  %15 = call i32 (...) @globalReturnsTrueOrFalse()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 100, i1 false)
  %18 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  %19 = load ptr, ptr %1, align 8
  %20 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %18, i64 noundef 99, ptr noundef %19) #7
  %21 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  call void @printLine(ptr noundef %21)
  br label %27

22:                                               ; preds = %14
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 100, i1 false)
  %23 = getelementptr inbounds [100 x i8], ptr %4, i64 0, i64 0
  %24 = load ptr, ptr %1, align 8
  %25 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %23, i64 noundef 99, ptr noundef %24) #7
  %26 = getelementptr inbounds [100 x i8], ptr %4, i64 0, i64 0
  call void @printLine(ptr noundef %26)
  br label %27

27:                                               ; preds = %22, %17
  ret void
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
