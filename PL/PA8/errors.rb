LineSegment#preprocess_prog: LineSegment.new(1.0,2.0,1.0,1.0) should preprocess to LineSegment.new(1.0,1.0,1.0,2.0) (actual result VerticalLine.new(1.0)) [incorrect answer]
Let#preprocess_prog: Let.new("x",LineSegment.new(1.0,2.0,1.0,2.0),LineSegment.new(2.0,3.0,1.0,0.0)) should preprocess to Let.new("x",Point.new(1.0,2.0),LineSegment.new(1.0,0.0,2.0,3.0)) (actual result Let.new("x",LineSegment.new(1.0,2.0,1.0,2.0),LineSegment.new(2.0,3.0,1.0,0.0))) [incorrect answer]
Shift#preprocess_prog: Shift.new(2.0,3.2,LineSegment.new(1.0,2.0,1.0,2.0)) should preprocess to Shift.new(2.0,3.2,Point.new(1.0,2.0)) (actual result Shift.new(2.0,3.2,LineSegment.new(1.0,2.0,1.0,2.0))) [incorrect answer]
Shift#preprocess_prog: Shift.new(2.0,3.2,LineSegment.new(2.0,3.0,1.0,0.0)) should preprocess to Shift.new(2.0,3.2,LineSegment.new(1.0,0.0,2.0,3.0)) (actual result Shift.new(2.0,3.2,LineSegment.new(2.0,3.0,1.0,0.0))) [incorrect answer]
Intersect#preprocess_prog: Intersect.new(LineSegment.new(1.0,2.0,1.0,2.0),LineSegment.new(2.0,3.0,1.0,0.0)) should preprocess to Intersect.new(Point.new(1.0,2.0),LineSegment.new(1.0,0.0,2.0,3.0)) (actual result Intersect.new(LineSegment.new(1.0,2.0,1.0,2.0),LineSegment.new(2.0,3.0,1.0,0.0))) [incorrect answer]
intersect_methods(Line#intersectVerticalLine): #<TypeError: nil can't be coerced into Float> ["/coursera/submissions/auto-grader/21/977068/src/hw.rb:45:in `-'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:45:in `real_close'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:205:in `intersectVerticalLine'"] [error]
intersect_methods(VerticalLine#intersect): #<TypeError: nil can't be coerced into Float> ["/coursera/submissions/auto-grader/21/977068/src/hw.rb:45:in `-'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:45:in `real_close'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:205:in `intersectVerticalLine'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:228:in `intersect'"] [error]
intersect_methods(VerticalLine#intersect): #<TypeError: nil can't be coerced into Float> ["/coursera/submissions/auto-grader/21/977068/src/hw.rb:45:in `-'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:45:in `real_close'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:205:in `intersectVerticalLine'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:228:in `intersect'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:73:in `intersectLineSegment'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:303:in `intersectVerticalLine'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:228:in `intersect'"] [error]
intersect_methods(VerticalLine#intersectLineSegment): #<TypeError: nil can't be coerced into Float> ["/coursera/submissions/auto-grader/21/977068/src/hw.rb:45:in `-'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:45:in `real_close'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:205:in `intersectVerticalLine'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:228:in `intersect'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:73:in `intersectLineSegment'"] [error]
intersect_methods(LineSegment#intersect): #<TypeError: nil can't be coerced into Float> ["/coursera/submissions/auto-grader/21/977068/src/hw.rb:45:in `-'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:45:in `real_close'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:205:in `intersectVerticalLine'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:228:in `intersect'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:73:in `intersectLineSegment'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:294:in `intersect'"] [error]
intersect_methods(LineSegment#intersectVerticalLine): #<TypeError: nil can't be coerced into Float> ["/coursera/submissions/auto-grader/21/977068/src/hw.rb:45:in `-'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:45:in `real_close'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:205:in `intersectVerticalLine'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:228:in `intersect'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:73:in `intersectLineSegment'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:303:in `intersectVerticalLine'"] [error]
intersect_methods(LineSegment#intersectLineSegment): #<TypeError: nil can't be coerced into Float> ["/coursera/submissions/auto-grader/21/977068/src/hw.rb:45:in `-'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:45:in `real_close'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:205:in `intersectVerticalLine'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:228:in `intersect'", "/coursera/submissions/auto-grader/21/977068/src/hw.rb:323:in `intersectLineSegment'"] [error]

