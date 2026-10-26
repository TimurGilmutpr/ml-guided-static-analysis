; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s04/CWE23_Relative_Path_Traversal__wchar_t_file_ofstream_12.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s04/CWE23_Relative_Path_Traversal__wchar_t_file_ofstream_12.cpp"
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

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1
@.str.3 = private unnamed_addr constant [9 x i32] [i32 102, i32 105, i32 108, i32 101, i32 46, i32 116, i32 120, i32 116, i32 0], align 4

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN55CWE23_Relative_Path_Traversal__wchar_t_file_ofstream_123badEv() #0 personality ptr @__gxx_personality_v0 {
  %1 = alloca ptr, align 8
  %2 = alloca [4096 x i32], align 16
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::basic_ofstream", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 16384, i1 false)
  %8 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 0
  store i32 47, ptr %8, align 16
  %9 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 1
  store i32 116, ptr %9, align 4
  %10 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 2
  store i32 109, ptr %10, align 8
  %11 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 3
  store i32 112, ptr %11, align 4
  %12 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 4
  store i32 47, ptr %12, align 16
  %13 = getelementptr inbounds [4096 x i32], ptr %2, i64 0, i64 0
  store ptr %13, ptr %1, align 8
  %14 = call i32 @globalReturnsTrueOrFalse()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %0
  %17 = load ptr, ptr %1, align 8
  %18 = call i64 @wcslen(ptr noundef %17) #5
  store i64 %18, ptr %3, align 8
  %19 = load i64, ptr %3, align 8
  %20 = sub i64 4096, %19
  %21 = icmp ugt i64 %20, 1
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = call noalias ptr @fopen(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %23, ptr %4, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = icmp ne ptr %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load ptr, ptr %1, align 8
  %28 = load i64, ptr %3, align 8
  %29 = getelementptr inbounds nuw i32, ptr %27, i64 %28
  %30 = load i64, ptr %3, align 8
  %31 = sub i64 4096, %30
  %32 = trunc i64 %31 to i32
  %33 = load ptr, ptr %4, align 8
  %34 = call ptr @fgetws(ptr noundef %29, i32 noundef %32, ptr noundef %33)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  call void @printLine(ptr noundef @.str.2)
  %37 = load ptr, ptr %1, align 8
  %38 = load i64, ptr %3, align 8
  %39 = getelementptr inbounds nuw i32, ptr %37, i64 %38
  store i32 0, ptr %39, align 4
  br label %40

40:                                               ; preds = %36, %26
  %41 = load ptr, ptr %4, align 8
  %42 = call i32 @fclose(ptr noundef %41)
  br label %43

43:                                               ; preds = %40, %22
  br label %44

44:                                               ; preds = %43, %16
  br label %48

45:                                               ; preds = %0
  %46 = load ptr, ptr %1, align 8
  %47 = call ptr @wcscat(ptr noundef %46, ptr noundef @.str.3) #6
  br label %48

48:                                               ; preds = %45, %44
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(248) %5)
  %49 = load ptr, ptr %1, align 8
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef %49, i32 noundef 16)
          to label %50 unwind label %52

50:                                               ; preds = %48
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(248) %5)
          to label %51 unwind label %52

51:                                               ; preds = %50
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %5) #6
  ret void

52:                                               ; preds = %50, %48
  %53 = landingpad { ptr, i32 }
          cleanup
  %54 = extractvalue { ptr, i32 } %53, 0
  store ptr %54, ptr %6, align 8
  %55 = extractvalue { ptr, i32 } %53, 1
  store i32 %55, ptr %7, align 4
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %5) #6
  br label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %6, align 8
  %58 = load i32, ptr %7, align 4
  %59 = insertvalue { ptr, i32 } poison, ptr %57, 0
  %60 = insertvalue { ptr, i32 } %59, i32 %58, 1
  resume { ptr, i32 } %60
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @globalReturnsTrueOrFalse() #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #3

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare ptr @fgetws(ptr noundef, i32 noundef, ptr noundef) #2

declare void @printLine(ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @wcscat(ptr noundef, ptr noundef) #4

declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #2

declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef, i32 noundef) #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(248)) #2

; Function Attrs: nounwind
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #4

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
