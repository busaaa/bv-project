require 'rails_helper'

RSpec.describe BasicDataProvider do

  let(:subject) { BasicDataProvider.instance }  
  let(:response_object) {
    {"pgatePath"=>"overview/inrunning/transitions", "sports"=>[{"id"=>100, "epId"=>240, "desc"=>"Football", "pos"=>1, "ne"=>100, "eic"=>25, "v"=>false, "ve"=>false, "mc"=>true, "ncmc"=>2, "nemc"=>1, "hasInplayEvents"=>true, "hasUpcomingEvents"=>true, "marketTypes"=>[{"mtId"=>1, "pos"=>2, "desc"=>"Match Betting", "mtDesc"=>"Match Betting", "couponName"=>"template_a", "headers"=>[1, "X", 2], "outcome_keys"=>[], "periods"=>[{"desc"=>"Match", "longDesc"=>"Match extended1", "pIds"=>[100, 101, 956, 955, 233], "config"=>{"filter"=>"ALL"}}]}], "comp"=>[{"id"=>6467510, "desc"=>"AUS A-League", "pos"=>42, "events"=>[{"id"=>1445181900, "event_type"=>"GAME_EVENT", "event_path_id"=>467979310, "sport_id"=>100, "desc"=>"Western United FC v Newcastle Jets", "oppADesc"=>"Western United FC", "oppAId"=>307371400, "oppBDesc"=>"Newcastle Jets", "oppBId"=>6306800, "time"=>1619427900000, "pos"=>9999, "scoreboard"=>{"eId"=>1445181900, "sId"=>100, "clk"=>"45:00", "clockInSeconds"=>2700, "validAt"=>1619430679876, "dsc"=>"HT", "oaId"=>307371400, "obId"=>6306800, "code"=>-1001, "periodKey"=>"HT", "sTs"=>1619427900000, "cal"=>true, "run"=>false, "act"=>307371400, "scrA"=>1, "scrB"=>0, "addresses"=>{"comment"=>"/scoreboard/board/1445181900/comments/en_GB", "essentialScoreboard"=>"/essentialscoreboard/100/1445181900", "essentialScoreboardCallback"=>"/c/essentialscoreboard/100/1445181900/en_GB", "stats"=>"/scoreboard/board/1445181900/stats", "timeline"=>"/scoreboard/board/1445181900/timeline", "overviewComment"=>"/scoreboard/board/1445181900/overview/comments/en_GB"}, "disabledScoreboard"=>false, "reversedClock"=>false, "preeventPeriodDescription"=>"", "inPlay"=>true, "scoreboardUrlFragment"=>nil, "scr"=>"1-0", "penaltyShootout"=>{}, "penaltiesScrA"=>0, "penaltiesScrB"=>0, "stoppageTime"=>"", "marketSuspensionReason"=>"", "redCardA"=>0, "redCardB"=>0, "matchLength"=>90}, "markets"=>[{"id"=>4299959130, "desc"=>"Match Betting", "eid"=>1445181900, "pid"=>100, "ptd"=>1, "ptdesc"=>"Win only", "st"=>1, "mblindex"=>81453333, "cur"=>true, "next"=>false, "mtid"=>1, "p"=>"90 Mins", "o"=>[{"oid"=>97659104600, "d"=>"Draw", "sd"=>nil, "cpid"=>528664460722, "pr"=>"4/1", "prd"=>5.0, "fdp"=>"5.0", "h"=>false, "po"=>2, "key"=>"MLX"}, {"oid"=>97659104400, "d"=>"Western United FC", "sd"=>nil, "cpid"=>528664476747, "pr"=>"2/7", "prd"=>1.286, "fdp"=>"1.286", "h"=>false, "po"=>1, "key"=>"ML1"}, {"oid"=>97659104500, "d"=>"Newcastle Jets", "sd"=>nil, "cpid"=>528664480967, "pr"=>"21/2", "prd"=>11.5, "fdp"=>"11.5", "h"=>false, "po"=>3, "key"=>"ML2"}]}], "metadata"=>{"badges"=>["CORNERS", "PIU", "BET_BOOST"]}, "has_stream"=>false}]}, {"id"=>32894110, "desc"=>"KAZ Kazakhstan 1. Division", "pos"=>520, "events"=>[{"id"=>1447940900, "event_type"=>"GAME_EVENT", "event_path_id"=>547408210, "sport_id"=>100, "desc"=>"FC Okzhetpes Kokshetau v Akademiya Ontustik", "oppADesc"=>"Okzhetpes Kokshetau", "oppAId"=>7097000, "oppBDesc"=>"Akademiya Ontustik", "oppBId"=>302190400, "time"=>1619427600000, "pos"=>9999, "scoreboard"=>{"eId"=>1447940900, "sId"=>100, "clk"=>"45:00", "clockInSeconds"=>2700, "validAt"=>1619430439019, "dsc"=>"HT", "oaId"=>7097000, "obId"=>302190400, "code"=>-1001, "periodKey"=>"HT", "sTs"=>1619427600000, "cal"=>true, "run"=>false, "act"=>7097000, "scrA"=>2, "scrB"=>0, "addresses"=>{"comment"=>"/scoreboard/board/1447940900/comments/en_GB", "essentialScoreboard"=>"/essentialscoreboard/100/1447940900", "essentialScoreboardCallback"=>"/c/essentialscoreboard/100/1447940900/en_GB", "stats"=>"/scoreboard/board/1447940900/stats", "timeline"=>"/scoreboard/board/1447940900/timeline", "overviewComment"=>"/scoreboard/board/1447940900/overview/comments/en_GB"}, "disabledScoreboard"=>false, "reversedClock"=>false, "preeventPeriodDescription"=>"", "inPlay"=>true, "scoreboardUrlFragment"=>nil, "scr"=>"2-0", "penaltyShootout"=>{}, "penaltiesScrA"=>0, "penaltiesScrB"=>0, "stoppageTime"=>"", "marketSuspensionReason"=>"POSSIBLE_RED_CARD", "redCardA"=>0, "redCardB"=>0, "matchLength"=>90}, "markets"=>[{"id"=>4376459130, "desc"=>"Match Betting", "eid"=>1447940900, "pid"=>100, "ptd"=>1, "ptdesc"=>"Win only", "st"=>1, "mblindex"=>131766333, "cur"=>true, "next"=>false, "mtid"=>1, "p"=>"90 Mins", "o"=>[{"oid"=>97883632400, "d"=>"Draw", "sd"=>nil, "cpid"=>528664463702, "pr"=>"19/2", "prd"=>10.5, "fdp"=>"10.5", "h"=>false, "po"=>2, "key"=>"MLX"}, {"oid"=>97883632300, "d"=>"Akademiya Ontustik", "sd"=>nil, "cpid"=>528664463703, "pr"=>"33/1", "prd"=>34.0, "fdp"=>"34.0", "h"=>false, "po"=>3, "key"=>"ML2"}, {"oid"=>97883632200, "d"=>"FC Okzhetpes Kokshetau", "sd"=>nil, "cpid"=>528664473508, "pr"=>"1/200", "prd"=>1.005, "fdp"=>"1.005", "h"=>false, "po"=>1, "key"=>"ML1"}]}], "metadata"=>{"badges"=>["BET_BOOST"]}, "has_stream"=>false}]}]}, {"id"=>600, "epId"=>239, "desc"=>"Tennis", "pos"=>2, "ne"=>50, "eic"=>20, "v"=>false, "ve"=>false, "mc"=>true, "ncmc"=>2, "nemc"=>1, "hasInplayEvents"=>true, "hasUpcomingEvents"=>true, "marketTypes"=>[{"mtId"=>68, "pos"=>1, "desc"=>"Match Betting", "mtDesc"=>"Match Betting", "couponName"=>"template_d", "headers"=>["Winner"], "outcome_keys"=>[], "periods"=>[{"desc"=>"Match", "longDesc"=>"Match", "pIds"=>[113], "config"=>{"filter"=>""}}]}], "comp"=>[{"id"=>547176110, "desc"=>"Munich Mens - 2021", "pos"=>1, "events"=>[{"id"=>1447670300, "event_type"=>"GAME_EVENT", "event_path_id"=>547366510, "sport_id"=>600, "desc"=>"John Millman v Alexei Popyrin", "oppADesc"=>"John Millman", "oppAId"=>16244200, "oppBDesc"=>"Popyrin, Alexei", "oppBId"=>276466800, "time"=>1619427000000, "pos"=>9999, "scoreboard"=>{"eId"=>1447670300, "sId"=>600, "clk"=>"00:00", "clockInSeconds"=>0, "validAt"=>1619430808108, "dsc"=>"1S", "oaId"=>16244200, "obId"=>276466800, "code"=>114, "periodKey"=>"1S12G", "sTs"=>1619427000000, "cal"=>true, "run"=>true, "act"=>276466800, "scrA"=>0, "scrB"=>0, "addresses"=>{"comment"=>"/scoreboard/board/1447670300/comments/en_GB", "essentialScoreboard"=>"/essentialscoreboard/600/1447670300", "essentialScoreboardCallback"=>"/c/essentialscoreboard/600/1447670300/en_GB", "stats"=>"/scoreboard/board/1447670300/stats", "timeline"=>"/scoreboard/board/1447670300/timeline", "overviewComment"=>"/scoreboard/board/1447670300/overview/comments/en_GB"}, "disabledScoreboard"=>false, "reversedClock"=>true, "preeventPeriodDescription"=>"", "inPlay"=>true, "scoreboardUrlFragment"=>nil, "gDsc"=>"12G", "pts"=>"0-0", "1s"=>"6-5", "2s"=>"0-0", "3s"=>"0-0", "4s"=>"0-0", "5s"=>"0-0", "1sA"=>6, "2sA"=>0, "3sA"=>0, "4sA"=>0, "5sA"=>0, "1sB"=>5, "2sB"=>0, "3sB"=>0, "4sB"=>0, "5sB"=>0, "ptsA"=>"0", "ptsB"=>"0", "tiebreak1A"=>nil, "tiebreak1B"=>nil, "tiebreak2A"=>nil, "tiebreak2B"=>nil, "tiebreak3A"=>nil, "tiebreak3B"=>nil, "tiebreak4A"=>nil, "tiebreak4B"=>nil, "tiebreak5A"=>nil, "tiebreak5B"=>nil, "setNum"=>1, "gameNum"=>12, "setScr"=>"0-0", "bos"=>3, "surface"=>"clay", "marketSuspensionReason"=>""}, "markets"=>[{"id"=>4363593330, "desc"=>"Match Betting", "eid"=>1447670300, "pid"=>113, "ptd"=>1, "ptdesc"=>"Win only", "st"=>1, "mblindex"=>6068000, "cur"=>true, "next"=>false, "mtid"=>68, "p"=>"Match", "o"=>[{"oid"=>97846029700, "d"=>"John Millman", "sd"=>nil, "cpid"=>528664489112, "pr"=>"1/1", "prd"=>2.0, "fdp"=>"2.0", "h"=>false, "po"=>1, "key"=>"ML1"}, {"oid"=>97846029900, "d"=>"Alexei Popyrin", "sd"=>nil, "cpid"=>528664489111, "pr"=>"3/4", "prd"=>1.75, "fdp"=>"1.75", "h"=>false, "po"=>3, "key"=>"ML2"}]}], "metadata"=>{"badges"=>["PIU"]}, "has_stream"=>false}]}, {"id"=>547181010, "desc"=>"Estoril Mens - 2021", "pos"=>2, "events"=>[{"id"=>1447753700, "event_type"=>"GAME_EVENT", "event_path_id"=>547378510, "sport_id"=>600, "desc"=>"Pablo Andujar v Alejandro Davidovich Fokina", "oppADesc"=>"Pablo Andujar", "oppAId"=>8390900, "oppBDesc"=>"Davidovich Fokina, Alejandro", "oppBId"=>269325500, "time"=>1619430000000, "pos"=>9999, "scoreboard"=>{"eId"=>1447753700, "sId"=>600, "clk"=>"00:00", "clockInSeconds"=>0, "validAt"=>1619430716894, "dsc"=>"1S", "oaId"=>8390900, "obId"=>269325500, "code"=>114, "periodKey"=>"1S4G", "sTs"=>1619430000000, "cal"=>true, "run"=>true, "act"=>8390900, "scrA"=>0, "scrB"=>0, "addresses"=>{"comment"=>"/scoreboard/board/1447753700/comments/en_GB", "essentialScoreboard"=>"/essentialscoreboard/600/1447753700", "essentialScoreboardCallback"=>"/c/essentialscoreboard/600/1447753700/en_GB", "stats"=>"/scoreboard/board/1447753700/stats", "timeline"=>"/scoreboard/board/1447753700/timeline", "overviewComment"=>"/scoreboard/board/1447753700/overview/comments/en_GB"}, "disabledScoreboard"=>false, "reversedClock"=>true, "preeventPeriodDescription"=>"", "inPlay"=>true, "scoreboardUrlFragment"=>nil, "gDsc"=>"4G", "pts"=>"0-0", "1s"=>"0-3", "2s"=>"0-0", "3s"=>"0-0", "4s"=>"0-0", "5s"=>"0-0", "1sA"=>0, "2sA"=>0, "3sA"=>0, "4sA"=>0, "5sA"=>0, "1sB"=>3, "2sB"=>0, "3sB"=>0, "4sB"=>0, "5sB"=>0, "ptsA"=>"0", "ptsB"=>"0", "tiebreak1A"=>nil, "tiebreak1B"=>nil, "tiebreak2A"=>nil, "tiebreak2B"=>nil, "tiebreak3A"=>nil, "tiebreak3B"=>nil, "tiebreak4A"=>nil, "tiebreak4B"=>nil, "tiebreak5A"=>nil, "tiebreak5B"=>nil, "setNum"=>1, "gameNum"=>4, "setScr"=>"0-0", "bos"=>3, "surface"=>"clay", "marketSuspensionReason"=>""}, "markets"=>[{"id"=>4369390830, "desc"=>"Match Betting", "eid"=>1447753700, "pid"=>113, "ptd"=>1, "ptdesc"=>"Win only", "st"=>1, "mblindex"=>75559000, "cur"=>true, "next"=>false, "mtid"=>68, "p"=>"Match", "o"=>[{"oid"=>97861998500, "d"=>"Pablo Andujar", "sd"=>nil, "cpid"=>528664482687, "pr"=>"9/2", "prd"=>5.5, "fdp"=>"5.5", "h"=>false, "po"=>1, "key"=>"ML1"}, {"oid"=>97861998600, "d"=>"Alejandro Davidovich Fokina", "sd"=>nil, "cpid"=>528664484534, "pr"=>"2/17", "prd"=>1.118, "fdp"=>"1.118", "h"=>false, "po"=>3, "key"=>"ML2"}]}], "metadata"=>{"badges"=>["PIU"]}, "has_stream"=>false}]}]}, {"id"=>364700, "epId"=>22884, "desc"=>"Snooker", "pos"=>3, "ne"=>5, "eic"=>5, "v"=>false, "ve"=>false, "mc"=>true, "ncmc"=>1, "nemc"=>2, "hasInplayEvents"=>true, "hasUpcomingEvents"=>false, "marketTypes"=>[{"mtId"=>100, "pos"=>1, "desc"=>"Match Betting", "mtDesc"=>"Match Betting", "couponName"=>"template_b", "headers"=>["1", "2"], "outcome_keys"=>[], "periods"=>[{"desc"=>"Match", "longDesc"=>"Match", "pIds"=>[335], "config"=>{"filter"=>""}}]}], "comp"=>[{"id"=>364988210, "desc"=>"World Championship 2021", "pos"=>9999, "events"=>[{"id"=>1445276600, "event_type"=>"GAME_EVENT", "event_path_id"=>547017310, "sport_id"=>364700, "desc"=>"Mark Allen v Mark Selby", "oppADesc"=>"Mark Allen", "oppAId"=>25495400, "oppBDesc"=>"Mark Selby", "oppBId"=>25441200, "time"=>1619271000000, "pos"=>9999, "scoreboard"=>{"eId"=>1445276600, "sId"=>364700, "clk"=>"", "clockInSeconds"=>19803, "validAt"=>1619370221826, "dsc"=>"15F", "oaId"=>25495400, "obId"=>25441200, "code"=>413, "periodKey"=>"15F", "sTs"=>1619271000000, "cal"=>true, "run"=>false, "act"=>0, "scrA"=>6, "scrB"=>9, "addresses"=>{"comment"=>"/scoreboard/board/1445276600/comments/en_GB", "essentialScoreboard"=>"/essentialscoreboard/364700/1445276600", "essentialScoreboardCallback"=>"/c/essentialscoreboard/364700/1445276600/en_GB", "stats"=>"/scoreboard/board/1445276600/stats", "timeline"=>"/scoreboard/board/1445276600/timeline", "overviewComment"=>"/scoreboard/board/1445276600/overview/comments/en_GB"}, "disabledScoreboard"=>false, "reversedClock"=>false, "preeventPeriodDescription"=>"", "inPlay"=>true, "scoreboardUrlFragment"=>nil, "bos"=>5, "fNum"=>15, "framesA"=>[1, 7, 65, 77, 33, 0, 0, 0, 84, 0, 78, 46, 83, 75, 12], "framesB"=>[121, 119, 1, 25, 69, 134, 76, 63, 53, 135, 54, 76, 0, 27, 90]}, "markets"=>[{"id"=>4302243630, "desc"=>"Match Winner - Session Break - Match Resumes at  7pm BST 26/04", "eid"=>1445276600, "pid"=>203, "ptd"=>1, "ptdesc"=>"Win only", "st"=>1, "mblindex"=>79692000, "cur"=>true, "next"=>false, "mtid"=>100, "p"=>"Match", "o"=>[{"oid"=>97666960400, "d"=>"Mark Selby", "sd"=>nil, "cpid"=>528663716593, "pr"=>"1/11", "prd"=>1.091, "fdp"=>"1.091", "h"=>false, "po"=>2, "key"=>"ML2"}, {"oid"=>97666960300, "d"=>"Mark Allen", "sd"=>nil, "cpid"=>528658570862, "pr"=>"6/1", "prd"=>7.0, "fdp"=>"7.0", "h"=>false, "po"=>0, "key"=>"ML1"}]}], "metadata"=>{"badges"=>["PIU"]}, "has_stream"=>false}, {"id"=>1445139300, "event_type"=>"GAME_EVENT", "event_path_id"=>546980910, "sport_id"=>364700, "desc"=>"Shaun Murphy v Yan Bingtao", "oppADesc"=>"Shaun Murphy", "oppAId"=>10109700, "oppBDesc"=>"Yan Bingtao", "oppBId"=>268145500, "time"=>1619287200000, "pos"=>9999, "scoreboard"=>{"eId"=>1445139300, "sId"=>364700, "clk"=>"", "clockInSeconds"=>18042, "validAt"=>1619368599462, "dsc"=>"16F", "oaId"=>10109700, "obId"=>268145500, "code"=>414, "periodKey"=>"16F", "sTs"=>1619287200000, "cal"=>true, "run"=>false, "act"=>0, "scrA"=>10, "scrB"=>6, "addresses"=>{"comment"=>"/scoreboard/board/1445139300/comments/en_GB", "essentialScoreboard"=>"/essentialscoreboard/364700/1445139300", "essentialScoreboardCallback"=>"/c/essentialscoreboard/364700/1445139300/en_GB", "stats"=>"/scoreboard/board/1445139300/stats", "timeline"=>"/scoreboard/board/1445139300/timeline", "overviewComment"=>"/scoreboard/board/1445139300/overview/comments/en_GB"}, "disabledScoreboard"=>false, "reversedClock"=>false, "preeventPeriodDescription"=>"", "inPlay"=>true, "scoreboardUrlFragment"=>nil, "bos"=>25, "fNum"=>16, "framesA"=>[112, 80, 144, 0, 58, 57, 96, 30, 88, 72, 20, 17, 65, 1, 78, 5], "framesB"=>[1, 35, 0, 88, 46, 50, 25, 101, 0, 36, 106, 114, 30, 75, 0, 102]}, "markets"=>[{"id"=>4297613930, "desc"=>"Match Winner - Session Break - Match Resumes at  7pm BST 26/04", "eid"=>1445139300, "pid"=>203, "ptd"=>1, "ptdesc"=>"Win only", "st"=>1, "mblindex"=>83102000, "cur"=>true, "next"=>false, "mtid"=>100, "p"=>"Match", "o"=>[{"oid"=>97652172400, "d"=>"Shaun Murphy", "sd"=>nil, "cpid"=>528663688665, "pr"=>"1/16", "prd"=>1.063, "fdp"=>"1.063", "h"=>false, "po"=>0, "key"=>"ML1"}, {"oid"=>97652172500, "d"=>"Yan Bingtao", "sd"=>nil, "cpid"=>528663688666, "pr"=>"7/1", "prd"=>8.0, "fdp"=>"8.0", "h"=>false, "po"=>2, "key"=>"ML2"}]}], "metadata"=>{"badges"=>["PIU"]}, "has_stream"=>false}]}]}], "slider_elements"=>[{"id"=>100, "type"=>"Sport", "desc"=>"Football", "slug"=>nil, "position"=>1}, {"id"=>600, "type"=>"Sport", "desc"=>"Tennis", "slug"=>nil, "position"=>2}, {"id"=>364700, "type"=>"Sport", "desc"=>"Snooker", "slug"=>nil, "position"=>3}], "total_number_of_events"=>61, "total_number_of_streamable_events"=>nil}  
  }

  describe 'get_flat_data' do
    let!(:flat_data) {
      {:sport=>[{:id=>100, :attributes=>{:desc=>"Football", :pos=>1}}, {:id=>600, :attributes=>{:desc=>"Tennis", :pos=>2}}, {:id=>364700, :attributes=>{:desc=>"Snooker", :pos=>3}}], :event=>[{:id=>1445181900, :attributes=>{:sport_id=>100, :desc=>"Western United FC v Newcastle Jets", :comp_desc=>"AUS A-League", :pos=>9999}}, {:id=>1447940900, :attributes=>{:sport_id=>100, :desc=>"FC Okzhetpes Kokshetau v Akademiya Ontustik", :comp_desc=>"KAZ Kazakhstan 1. Division", :pos=>9999}}, {:id=>1447670300, :attributes=>{:sport_id=>600, :desc=>"John Millman v Alexei Popyrin", :comp_desc=>"Munich Mens - 2021", :pos=>9999}}, {:id=>1447753700, :attributes=>{:sport_id=>600, :desc=>"Pablo Andujar v Alejandro Davidovich Fokina", :comp_desc=>"Estoril Mens - 2021", :pos=>9999}}, {:id=>1445276600, :attributes=>{:sport_id=>364700, :desc=>"Mark Allen v Mark Selby", :comp_desc=>"World Championship 2021", :pos=>9999}}, {:id=>1445139300, :attributes=>{:sport_id=>364700, :desc=>"Shaun Murphy v Yan Bingtao", :comp_desc=>"World Championship 2021", :pos=>9999}}], :market=>[{:id=>4299959130, :attributes=>{:event_id=>1445181900, :desc=>"Match Betting", :pt_desc=>"Win only"}}, {:id=>4376459130, :attributes=>{:event_id=>1447940900, :desc=>"Match Betting", :pt_desc=>"Win only"}}, {:id=>4363593330, :attributes=>{:event_id=>1447670300, :desc=>"Match Betting", :pt_desc=>"Win only"}}, {:id=>4369390830, :attributes=>{:event_id=>1447753700, :desc=>"Match Betting", :pt_desc=>"Win only"}}, {:id=>4302243630, :attributes=>{:event_id=>1445276600, :desc=>"Match Winner - Session Break - Match Resumes at  7pm BST 26/04", :pt_desc=>"Win only"}}, {:id=>4297613930, :attributes=>{:event_id=>1445139300, :desc=>"Match Winner - Session Break - Match Resumes at  7pm BST 26/04", :pt_desc=>"Win only"}}], :outcome=>[{:id=>97659104600, :attributes=>{:market_id=>4299959130, :d=>"Draw", :fdp=>"5.0"}}, {:id=>97659104400, :attributes=>{:market_id=>4299959130, :d=>"Western United FC", :fdp=>"1.286"}}, {:id=>97659104500, :attributes=>{:market_id=>4299959130, :d=>"Newcastle Jets", :fdp=>"11.5"}}, {:id=>97883632400, :attributes=>{:market_id=>4376459130, :d=>"Draw", :fdp=>"10.5"}}, {:id=>97883632300, :attributes=>{:market_id=>4376459130, :d=>"Akademiya Ontustik", :fdp=>"34.0"}}, {:id=>97883632200, :attributes=>{:market_id=>4376459130, :d=>"FC Okzhetpes Kokshetau", :fdp=>"1.005"}}, {:id=>97846029700, :attributes=>{:market_id=>4363593330, :d=>"John Millman", :fdp=>"2.0"}}, {:id=>97846029900, :attributes=>{:market_id=>4363593330, :d=>"Alexei Popyrin", :fdp=>"1.75"}}, {:id=>97861998500, :attributes=>{:market_id=>4369390830, :d=>"Pablo Andujar", :fdp=>"5.5"}}, {:id=>97861998600, :attributes=>{:market_id=>4369390830, :d=>"Alejandro Davidovich Fokina", :fdp=>"1.118"}}, {:id=>97666960400, :attributes=>{:market_id=>4302243630, :d=>"Mark Selby", :fdp=>"1.091"}}, {:id=>97666960300, :attributes=>{:market_id=>4302243630, :d=>"Mark Allen", :fdp=>"7.0"}}, {:id=>97652172400, :attributes=>{:market_id=>4297613930, :d=>"Shaun Murphy", :fdp=>"1.063"}}, {:id=>97652172500, :attributes=>{:market_id=>4297613930, :d=>"Yan Bingtao", :fdp=>"8.0"}}]} 
    }

    it 'returns model attributes' do
      allow(subject).to receive(:get_response).and_return(response_object)

      expect(subject.send(:get_flat_data)).to eq flat_data
    end

  end

  describe 'load_data' do

    it 'saves corresponding models with provided attributes' do
      allow(subject).to receive(:get_response).and_return(response_object)
      expect(Sport.count).to eq 0
      expect(Event.count).to eq 0
      expect(Market.count).to eq 0
      expect(Outcome.count).to eq 0
      subject.load_data
      expect(Sport.count).to eq 3
      expect(Event.count).to eq 6
      expect(Market.count).to eq 6
      expect(Outcome.count).to eq 14
    end
   
  end
end
