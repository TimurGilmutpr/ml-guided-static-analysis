; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s04/CWE23_Relative_Path_Traversal__wchar_t_listen_socket_ifstream_32.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s04/CWE23_Relative_Path_Traversal__wchar_t_listen_socket_ifstream_32.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$_ZSt6wcschrPww = comdat any

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN64CWE23_Relative_Path_Traversal__wchar_t_listen_socket_ifstream_323badEv() #0 personality ptr @__gxx_personality_v0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [4096 x i32], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %"class.std::basic_ifstream", align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  store ptr %1, ptr %2, align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 16384, i1 false)
  %16 = getelementptr inbounds [4096 x i32], ptr %4, i32 0, i32 0
  store i32 47, ptr %16, align 16
  %17 = getelementptr inbounds [4096 x i32], ptr %4, i32 0, i32 1
  store i32 116, ptr %17, align 4
  %18 = getelementptr inbounds [4096 x i32], ptr %4, i32 0, i32 2
  store i32 109, ptr %18, align 8
  %19 = getelementptr inbounds [4096 x i32], ptr %4, i32 0, i32 3
  store i32 112, ptr %19, align 4
  %20 = getelementptr inbounds [4096 x i32], ptr %4, i32 0, i32 4
  store i32 47, ptr %20, align 16
  %21 = getelementptr inbounds [4096 x i32], ptr %4, i64 0, i64 0
  store ptr %21, ptr %1, align 8
  %22 = load ptr, ptr %2, align 8
  %23 = load ptr, ptr %22, align 8
  store ptr %23, ptr %5, align 8
  store i32 -1, ptr %9, align 4
  store i32 -1, ptr %10, align 4
  %24 = load ptr, ptr %5, align 8
  %25 = call i64 @wcslen(ptr noundef %24) #7
  store i64 %25, ptr %11, align 8
  br label %26

26:                                               ; preds = %0
  %27 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #8
  store i32 %27, ptr %9, align 4
  %28 = load i32, ptr %9, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %91

31:                                               ; preds = %26
  call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 16, i1 false)
  %32 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %7, i32 0, i32 0
  store i16 2, ptr %32, align 4
  %33 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %7, i32 0, i32 2
  %34 = getelementptr inbounds nuw %struct.in_addr, ptr %33, i32 0, i32 0
  store i32 0, ptr %34, align 4
  %35 = call zeroext i16 @htons(i16 noundef zeroext 27015) #9
  %36 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %7, i32 0, i32 1
  store i16 %35, ptr %36, align 2
  %37 = load i32, ptr %9, align 4
  %38 = call i32 @bind(i32 noundef %37, ptr noundef %7, i32 noundef 16) #8
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %91

41:                                               ; preds = %31
  %42 = load i32, ptr %9, align 4
  %43 = call i32 @listen(i32 noundef %42, i32 noundef 5) #8
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %91

46:                                               ; preds = %41
  %47 = load i32, ptr %9, align 4
  %48 = call i32 @accept(i32 noundef %47, ptr noundef null, ptr noundef null)
  store i32 %48, ptr %10, align 4
  %49 = load i32, ptr %10, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %91

52:                                               ; preds = %46
  %53 = load i32, ptr %10, align 4
  %54 = load ptr, ptr %5, align 8
  %55 = load i64, ptr %11, align 8
  %56 = getelementptr inbounds nuw i32, ptr %54, i64 %55
  %57 = load i64, ptr %11, align 8
  %58 = sub i64 4096, %57
  %59 = sub i64 %58, 1
  %60 = mul i64 4, %59
  %61 = call i64 @recv(i32 noundef %53, ptr noundef %56, i64 noundef %60, i32 noundef 0)
  %62 = trunc i64 %61 to i32
  store i32 %62, ptr %6, align 4
  %63 = load i32, ptr %6, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %68, label %65

65:                                               ; preds = %52
  %66 = load i32, ptr %6, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %52
  br label %91

69:                                               ; preds = %65
  %70 = load ptr, ptr %5, align 8
  %71 = load i64, ptr %11, align 8
  %72 = load i32, ptr %6, align 4
  %73 = sext i32 %72 to i64
  %74 = udiv i64 %73, 4
  %75 = add i64 %71, %74
  %76 = getelementptr inbounds nuw i32, ptr %70, i64 %75
  store i32 0, ptr %76, align 4
  %77 = load ptr, ptr %5, align 8
  %78 = call noundef ptr @_ZSt6wcschrPww(ptr noundef %77, i32 noundef signext 13)
  store ptr %78, ptr %8, align 8
  %79 = load ptr, ptr %8, align 8
  %80 = icmp ne ptr %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load ptr, ptr %8, align 8
  store i32 0, ptr %82, align 4
  br label %83

83:                                               ; preds = %81, %69
  %84 = load ptr, ptr %5, align 8
  %85 = call noundef ptr @_ZSt6wcschrPww(ptr noundef %84, i32 noundef signext 10)
  store ptr %85, ptr %8, align 8
  %86 = load ptr, ptr %8, align 8
  %87 = icmp ne ptr %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load ptr, ptr %8, align 8
  store i32 0, ptr %89, align 4
  br label %90

90:                                               ; preds = %88, %83
  br label %91

91:                                               ; preds = %90, %68, %51, %45, %40, %30
  %92 = load i32, ptr %9, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, ptr %9, align 4
  %96 = call i32 @close(i32 noundef %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, ptr %10, align 4
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, ptr %10, align 4
  %102 = call i32 @close(i32 noundef %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load ptr, ptr %5, align 8
  %105 = load ptr, ptr %2, align 8
  store ptr %104, ptr %105, align 8
  %106 = load ptr, ptr %3, align 8
  %107 = load ptr, ptr %106, align 8
  store ptr %107, ptr %12, align 8
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %13)
  %108 = load ptr, ptr %12, align 8
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %13, ptr noundef %108, i32 noundef 8)
          to label %109 unwind label %111

109:                                              ; preds = %103
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(256) %13)
          to label %110 unwind label %111

110:                                              ; preds = %109
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %13) #8
  ret void

111:                                              ; preds = %109, %103
  %112 = landingpad { ptr, i32 }
          cleanup
  %113 = extractvalue { ptr, i32 } %112, 0
  store ptr %113, ptr %14, align 8
  %114 = extractvalue { ptr, i32 } %112, 1
  store i32 %114, ptr %15, align 4
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %13) #8
  br label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %14, align 8
  %117 = load i32, ptr %15, align 4
  %118 = insertvalue { ptr, i32 } poison, ptr %116, 0
  %119 = insertvalue { ptr, i32 } %118, i32 %117, 1
  resume { ptr, i32 } %119
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #2

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

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6wcschrPww(ptr noundef %0, i32 noundef signext %1) #6 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = load i32, ptr %4, align 4
  %7 = call ptr @wcschr(ptr noundef %5, i32 noundef signext %6) #7
  ret ptr %7
}

declare i32 @close(i32 noundef) #5

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #5

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) #5

declare i32 @__gxx_personality_v0(...)

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(256)) #5

; Function Attrs: nounwind
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare ptr @wcschr(ptr noundef, i32 noundef signext) #2

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
