; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s06/CWE134_Uncontrolled_Format_String__wchar_t_listen_socket_vfprintf_12.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s06/CWE134_Uncontrolled_Format_String__wchar_t_listen_socket_vfprintf_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [16 x i32] [i32 102, i32 105, i32 120, i32 101, i32 100, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 116, i32 101, i32 115, i32 116, i32 0], align 4
@stdout = external global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_listen_socket_vfprintf_12_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %3 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %3, ptr %1, align 8
  %4 = call i32 (...) @globalReturnsTrueOrFalse()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load ptr, ptr %1, align 8
  %8 = call ptr @wcscpy(ptr noundef %7, ptr noundef @.str) #7
  br label %12

9:                                                ; preds = %0
  %10 = load ptr, ptr %1, align 8
  %11 = call ptr @wcscpy(ptr noundef %10, ptr noundef @.str) #7
  br label %12

12:                                               ; preds = %9, %6
  %13 = call i32 (...) @globalReturnsTrueOrFalse()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load ptr, ptr %1, align 8
  %17 = load ptr, ptr %1, align 8
  call void (ptr, ...) @goodG2BVaSinkB(ptr noundef %16, ptr noundef %17)
  br label %21

18:                                               ; preds = %12
  %19 = load ptr, ptr %1, align 8
  %20 = load ptr, ptr %1, align 8
  call void (ptr, ...) @goodG2BVaSinkB(ptr noundef %19, ptr noundef %20)
  br label %21

21:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind
declare ptr @wcscpy(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2BVaSinkB(ptr noundef %0, ...) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %4)
  %5 = load ptr, ptr @stdout, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  %8 = call i32 @vfwprintf(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %9)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

declare i32 @vfwprintf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %15 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %15, ptr %1, align 8
  %16 = call i32 (...) @globalReturnsTrueOrFalse()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %99

18:                                               ; preds = %0
  store i32 -1, ptr %6, align 4
  store i32 -1, ptr %7, align 4
  %19 = load ptr, ptr %1, align 8
  %20 = call i64 @wcslen(ptr noundef %19) #8
  store i64 %20, ptr %8, align 8
  br label %21

21:                                               ; preds = %18
  %22 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %22, ptr %6, align 4
  %23 = load i32, ptr %6, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %86

26:                                               ; preds = %21
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %27 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %27, align 4
  %28 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %29 = getelementptr inbounds nuw %struct.in_addr, ptr %28, i32 0, i32 0
  store i32 0, ptr %29, align 4
  %30 = call zeroext i16 @htons(i16 noundef zeroext 27015) #9
  %31 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %30, ptr %31, align 2
  %32 = load i32, ptr %6, align 4
  %33 = call i32 @bind(i32 noundef %32, ptr noundef %4, i32 noundef 16) #7
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %86

36:                                               ; preds = %26
  %37 = load i32, ptr %6, align 4
  %38 = call i32 @listen(i32 noundef %37, i32 noundef 5) #7
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %86

41:                                               ; preds = %36
  %42 = load i32, ptr %6, align 4
  %43 = call i32 @accept(i32 noundef %42, ptr noundef null, ptr noundef null)
  store i32 %43, ptr %7, align 4
  %44 = load i32, ptr %7, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %86

47:                                               ; preds = %41
  %48 = load i32, ptr %7, align 4
  %49 = load ptr, ptr %1, align 8
  %50 = load i64, ptr %8, align 8
  %51 = getelementptr inbounds nuw i32, ptr %49, i64 %50
  %52 = load i64, ptr %8, align 8
  %53 = sub i64 100, %52
  %54 = sub i64 %53, 1
  %55 = mul i64 4, %54
  %56 = call i64 @recv(i32 noundef %48, ptr noundef %51, i64 noundef %55, i32 noundef 0)
  %57 = trunc i64 %56 to i32
  store i32 %57, ptr %3, align 4
  %58 = load i32, ptr %3, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %63, label %60

60:                                               ; preds = %47
  %61 = load i32, ptr %3, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %47
  br label %86

64:                                               ; preds = %60
  %65 = load ptr, ptr %1, align 8
  %66 = load i64, ptr %8, align 8
  %67 = load i32, ptr %3, align 4
  %68 = sext i32 %67 to i64
  %69 = udiv i64 %68, 4
  %70 = add i64 %66, %69
  %71 = getelementptr inbounds nuw i32, ptr %65, i64 %70
  store i32 0, ptr %71, align 4
  %72 = load ptr, ptr %1, align 8
  %73 = call ptr @wcschr(ptr noundef %72, i32 noundef 13) #8
  store ptr %73, ptr %5, align 8
  %74 = load ptr, ptr %5, align 8
  %75 = icmp ne ptr %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = load ptr, ptr %5, align 8
  store i32 0, ptr %77, align 4
  br label %78

78:                                               ; preds = %76, %64
  %79 = load ptr, ptr %1, align 8
  %80 = call ptr @wcschr(ptr noundef %79, i32 noundef 10) #8
  store ptr %80, ptr %5, align 8
  %81 = load ptr, ptr %5, align 8
  %82 = icmp ne ptr %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load ptr, ptr %5, align 8
  store i32 0, ptr %84, align 4
  br label %85

85:                                               ; preds = %83, %78
  br label %86

86:                                               ; preds = %85, %63, %46, %40, %35, %25
  %87 = load i32, ptr %6, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, ptr %6, align 4
  %91 = call i32 @close(i32 noundef %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, ptr %7, align 4
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, ptr %7, align 4
  %97 = call i32 @close(i32 noundef %96)
  br label %98

98:                                               ; preds = %95, %92
  br label %180

99:                                               ; preds = %0
  store i32 -1, ptr %12, align 4
  store i32 -1, ptr %13, align 4
  %100 = load ptr, ptr %1, align 8
  %101 = call i64 @wcslen(ptr noundef %100) #8
  store i64 %101, ptr %14, align 8
  br label %102

102:                                              ; preds = %99
  %103 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %103, ptr %12, align 4
  %104 = load i32, ptr %12, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %167

107:                                              ; preds = %102
  call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 16, i1 false)
  %108 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %10, i32 0, i32 0
  store i16 2, ptr %108, align 4
  %109 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %10, i32 0, i32 2
  %110 = getelementptr inbounds nuw %struct.in_addr, ptr %109, i32 0, i32 0
  store i32 0, ptr %110, align 4
  %111 = call zeroext i16 @htons(i16 noundef zeroext 27015) #9
  %112 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %10, i32 0, i32 1
  store i16 %111, ptr %112, align 2
  %113 = load i32, ptr %12, align 4
  %114 = call i32 @bind(i32 noundef %113, ptr noundef %10, i32 noundef 16) #7
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %167

117:                                              ; preds = %107
  %118 = load i32, ptr %12, align 4
  %119 = call i32 @listen(i32 noundef %118, i32 noundef 5) #7
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %167

122:                                              ; preds = %117
  %123 = load i32, ptr %12, align 4
  %124 = call i32 @accept(i32 noundef %123, ptr noundef null, ptr noundef null)
  store i32 %124, ptr %13, align 4
  %125 = load i32, ptr %13, align 4
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %167

128:                                              ; preds = %122
  %129 = load i32, ptr %13, align 4
  %130 = load ptr, ptr %1, align 8
  %131 = load i64, ptr %14, align 8
  %132 = getelementptr inbounds nuw i32, ptr %130, i64 %131
  %133 = load i64, ptr %14, align 8
  %134 = sub i64 100, %133
  %135 = sub i64 %134, 1
  %136 = mul i64 4, %135
  %137 = call i64 @recv(i32 noundef %129, ptr noundef %132, i64 noundef %136, i32 noundef 0)
  %138 = trunc i64 %137 to i32
  store i32 %138, ptr %9, align 4
  %139 = load i32, ptr %9, align 4
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %144, label %141

141:                                              ; preds = %128
  %142 = load i32, ptr %9, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141, %128
  br label %167

145:                                              ; preds = %141
  %146 = load ptr, ptr %1, align 8
  %147 = load i64, ptr %14, align 8
  %148 = load i32, ptr %9, align 4
  %149 = sext i32 %148 to i64
  %150 = udiv i64 %149, 4
  %151 = add i64 %147, %150
  %152 = getelementptr inbounds nuw i32, ptr %146, i64 %151
  store i32 0, ptr %152, align 4
  %153 = load ptr, ptr %1, align 8
  %154 = call ptr @wcschr(ptr noundef %153, i32 noundef 13) #8
  store ptr %154, ptr %11, align 8
  %155 = load ptr, ptr %11, align 8
  %156 = icmp ne ptr %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %145
  %158 = load ptr, ptr %11, align 8
  store i32 0, ptr %158, align 4
  br label %159

159:                                              ; preds = %157, %145
  %160 = load ptr, ptr %1, align 8
  %161 = call ptr @wcschr(ptr noundef %160, i32 noundef 10) #8
  store ptr %161, ptr %11, align 8
  %162 = load ptr, ptr %11, align 8
  %163 = icmp ne ptr %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load ptr, ptr %11, align 8
  store i32 0, ptr %165, align 4
  br label %166

166:                                              ; preds = %164, %159
  br label %167

167:                                              ; preds = %166, %144, %127, %121, %116, %106
  %168 = load i32, ptr %12, align 4
  %169 = icmp ne i32 %168, -1
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, ptr %12, align 4
  %172 = call i32 @close(i32 noundef %171)
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i32, ptr %13, align 4
  %175 = icmp ne i32 %174, -1
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, ptr %13, align 4
  %178 = call i32 @close(i32 noundef %177)
  br label %179

179:                                              ; preds = %176, %173
  br label %180

180:                                              ; preds = %179, %98
  %181 = call i32 (...) @globalReturnsTrueOrFalse()
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load ptr, ptr %1, align 8
  %185 = load ptr, ptr %1, align 8
  call void (ptr, ...) @goodB2GVaSinkG(ptr noundef %184, ptr noundef %185)
  br label %189

186:                                              ; preds = %180
  %187 = load ptr, ptr %1, align 8
  %188 = load ptr, ptr %1, align 8
  call void (ptr, ...) @goodB2GVaSinkG(ptr noundef %187, ptr noundef %188)
  br label %189

189:                                              ; preds = %186, %183
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #5

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #6

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) #3

declare i32 @accept(i32 noundef, ptr noundef, ptr noundef) #2

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare ptr @wcschr(ptr noundef, i32 noundef) #5

declare i32 @close(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2GVaSinkG(ptr noundef %0, ...) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %4)
  %5 = load ptr, ptr @stdout, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  %7 = call i32 @vfwprintf(ptr noundef %5, ptr noundef @.str.1, ptr noundef %6)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %8)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
