package cfastats

type CFAResult struct {
	// False negative.
	FalseNegative2WayConditional int
	FalseNegativeNWayConditional int
	FalseNegativePostTestLoop    int
	FalseNegativePreTestLoop     int
	// False positive.
	FalsePositive2WayConditional int
	FalsePositiveNWayConditional int
	FalsePositivePostTestLoop    int
	FalsePositivePreTestLoop     int
	// True positive.
	TruePositive2WayConditional int
	TruePositiveNWayConditional int
	TruePositivePreTestLoop     int
	TruePositivePostTestLoop    int
	// True amount.
	Total2WayConditional int
	TotalNWayConditional int
	TotalPreTestLoop     int
	TotalPostTestLoop    int
}

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

// false negatives; *not* recovered but present in original.

func (stats *CFAStats) FalseNegative2WayConditional() int {
	if stats.Got2WayConditional > stats.Want2WayConditional {
		return 0
	}
	return stats.Want2WayConditional - stats.Got2WayConditional
}

func (stats *CFAStats) FalseNegativeNWayConditional() int {
	if stats.GotNWayConditional > stats.WantNWayConditional {
		return 0
	}
	return stats.WantNWayConditional - stats.GotNWayConditional
}

func (stats *CFAStats) FalseNegativePreTestLoop() int {
	if stats.GotPreTestLoop > stats.WantPreTestLoop {
		return 0
	}
	return stats.WantPreTestLoop - stats.GotPreTestLoop
}

func (stats *CFAStats) FalseNegativePostTestLoop() int {
	if stats.GotPostTestLoop > stats.WantPostTestLoop {
		return 0
	}
	return stats.WantPostTestLoop - stats.GotPostTestLoop
}

// false positives; recovered but *not* present in original.

func (stats *CFAStats) FalsePositive2WayConditional() int {
	if stats.Got2WayConditional < stats.Want2WayConditional {
		return 0
	}
	return stats.Got2WayConditional - stats.Want2WayConditional
}

func (stats *CFAStats) FalsePositiveNWayConditional() int {
	if stats.GotNWayConditional < stats.WantNWayConditional {
		return 0
	}
	return stats.GotNWayConditional - stats.WantNWayConditional
}

func (stats *CFAStats) FalsePositivePreTestLoop() int {
	if stats.GotPreTestLoop < stats.WantPreTestLoop {
		return 0
	}
	return stats.GotPreTestLoop - stats.WantPreTestLoop
}

func (stats *CFAStats) FalsePositivePostTestLoop() int {
	if stats.GotPostTestLoop < stats.WantPostTestLoop {
		return 0
	}
	return stats.GotPostTestLoop - stats.WantPostTestLoop
}

// true positives; recovered and present in original.

func (stats *CFAStats) TruePositive2WayConditional() int {
	if stats.Got2WayConditional < stats.Want2WayConditional {
		return stats.Got2WayConditional
	}
	return stats.Want2WayConditional
}

func (stats *CFAStats) TruePositiveNWayConditional() int {
	if stats.GotNWayConditional < stats.WantNWayConditional {
		return stats.GotNWayConditional
	}
	return stats.WantNWayConditional
}

func (stats *CFAStats) TruePositivePreTestLoop() int {
	if stats.GotPreTestLoop < stats.WantPreTestLoop {
		return stats.GotPreTestLoop
	}
	return stats.WantPreTestLoop
}

func (stats *CFAStats) TruePositivePostTestLoop() int {
	if stats.GotPostTestLoop < stats.WantPostTestLoop {
		return stats.GotPostTestLoop
	}
	return stats.WantPostTestLoop
}
