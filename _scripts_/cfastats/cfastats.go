package cfastats

type CFAStats struct {
	Name                string `json:"name"`           // function name
	Want2WayConditional int    `json:"want_2way"`      // if_stmts + if_else_stmts
	Got2WayConditional  int    `json:"got_2way"`       // ifs
	WantNWayConditional int    `json:"want_nway"`      // switch_stmts
	GotNWayConditional  int    `json:"got_nway"`       // switches
	WantPreTestLoop     int    `json:"want_pre_loop"`  // loops (type=pre-test_loop)
	GotPreTestLoop      int    `json:"got_pre_loop"`   // loops (type=pre-test_loop)
	WantPostTestLoop    int    `json:"want_post_loop"` // do_while_loops
	GotPostTestLoop     int    `json:"got_post_loop"`  // loops (type=post-test_loop)
}

// false negatives.

func (stats *CFAStats) FalseNegative2WayConditional() int {
	x := stats.Want2WayConditional - stats.Got2WayConditional
	if x < 0 {
		return 0
	}
	return x
}

func (stats *CFAStats) FalseNegativeNWayConditional() int {
	x := stats.WantNWayConditional - stats.GotNWayConditional
	if x < 0 {
		return 0
	}
	return x
}

func (stats *CFAStats) FalseNegativePreTestLoop() int {
	x := stats.WantPreTestLoop - stats.GotPreTestLoop
	if x < 0 {
		return 0
	}
	return x
}

func (stats *CFAStats) FalseNegativePostTestLoop() int {
	x := stats.WantPostTestLoop - stats.GotPostTestLoop
	if x < 0 {
		return 0
	}
	return x
}

// false positives.

func (stats *CFAStats) FalsePositive2WayConditional() int {
	x := stats.Got2WayConditional - stats.Want2WayConditional
	if x < 0 {
		return 0
	}
	return x
}

func (stats *CFAStats) FalsePositiveNWayConditional() int {
	x := stats.GotNWayConditional - stats.WantNWayConditional
	if x < 0 {
		return 0
	}
	return x
}

func (stats *CFAStats) FalsePositivePreTestLoop() int {
	x := stats.GotPreTestLoop - stats.WantPreTestLoop
	if x < 0 {
		return 0
	}
	return x
}

func (stats *CFAStats) FalsePositivePostTestLoop() int {
	x := stats.GotPostTestLoop - stats.WantPostTestLoop
	if x < 0 {
		return 0
	}
	return x
}
