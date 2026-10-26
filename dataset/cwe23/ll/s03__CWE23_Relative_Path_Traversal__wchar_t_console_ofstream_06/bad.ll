; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s03/CWE23_Relative_Path_Traversal__wchar_t_console_ofstream_06.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s03/CWE23_Relative_Path_Traversal__wchar_t_console_ofstream_06.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
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

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN58CWE23_Relative_Path_Traversal__wchar_t_console_ofstream_063badEv() #0 personality ptr @__gxx_personality_v0 {
  %1 = alloca ptr, align 8
  %2 = alloca [4096 x i32], align 16
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::basic_ofstream", align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 16384, i1 false)
  %7 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 0
  store i32 47, ptr %7, align 16
  %8 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 1
  store i32 116, ptr %8, align 4
  %9 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 2
  store i32 109, ptr %9, align 8
  %10 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 3
  store i32 112, ptr %10, align 4
  %11 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 4
  store i32 47, ptr %11, align 16
  %12 = getelementptr inbounds [4096 x i32], ptr %2, i64 0, i64 0
  store ptr %12, ptr %1, align 8
  %13 = load ptr, ptr %1, align 8
  %14 = call i64 @wcslen(ptr noundef %13) #5
  store i64 %14, ptr %3, align 8
  %15 = load i64, ptr %3, align 8
  %16 = sub i64 4096, %15
  %17 = icmp ugt i64 %16, 1
  br i1 %17, label %18, label %51

18:                                               ; preds = %0
  %19 = load ptr, ptr %1, align 8
  %20 = load i64, ptr %3, align 8
  %21 = getelementptr inbounds nuw i32, ptr %19, i64 %20
  %22 = load i64, ptr %3, align 8
  %23 = sub i64 4096, %22
  %24 = trunc i64 %23 to i32
  %25 = load ptr, ptr @stdin, align 8
  %26 = call ptr @fgetws(ptr noundef %21, i32 noundef %24, ptr noundef %25)
  %27 = icmp ne ptr %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %18
  %29 = load ptr, ptr %1, align 8
  %30 = call i64 @wcslen(ptr noundef %29) #5
  store i64 %30, ptr %3, align 8
  %31 = load i64, ptr %3, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load ptr, ptr %1, align 8
  %35 = load i64, ptr %3, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds nuw i32, ptr %34, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load ptr, ptr %1, align 8
  %42 = load i64, ptr %3, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds nuw i32, ptr %41, i64 %43
  store i32 0, ptr %44, align 4
  br label %45

45:                                               ; preds = %40, %33, %28
  br label %50

46:                                               ; preds = %18
  call void @printLine(ptr noundef @.str)
  %47 = load ptr, ptr %1, align 8
  %48 = load i64, ptr %3, align 8
  %49 = getelementptr inbounds nuw i32, ptr %47, i64 %48
  store i32 0, ptr %49, align 4
  br label %50

50:                                               ; preds = %46, %45
  br label %51

51:                                               ; preds = %50, %0
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4)
  %52 = load ptr, ptr %1, align 8
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %4, ptr noundef %52, i32 noundef 16)
          to label %53 unwind label %55

53:                                               ; preds = %51
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(248) %4)
          to label %54 unwind label %55

54:                                               ; preds = %53
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #6
  ret void

55:                                               ; preds = %53, %51
  %56 = landingpad { ptr, i32 }
          cleanup
  %57 = extractvalue { ptr, i32 } %56, 0
  store ptr %57, ptr %5, align 8
  %58 = extractvalue { ptr, i32 } %56, 1
  store i32 %58, ptr %6, align 4
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #6
  br label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %5, align 8
  %61 = load i32, ptr %6, align 4
  %62 = insertvalue { ptr, i32 } poison, ptr %60, 0
  %63 = insertvalue { ptr, i32 } %62, i32 %61, 1
  resume { ptr, i32 } %63
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #2

declare ptr @fgetws(ptr noundef, i32 noundef, ptr noundef) #3

declare void @printLine(ptr noundef) #3

declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #3

declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef, i32 noundef) #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(248)) #3

; Function Attrs: nounwind
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #4

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
