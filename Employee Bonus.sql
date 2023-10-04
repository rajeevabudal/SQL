-- Table: Employee

-- +-------------+---------+

-- | Column Name | Type    |

-- +-------------+---------+

-- | empId       | int     |

-- | name        | varchar |

-- | supervisor  | int     |

-- | salary      | int     |

-- +-------------+---------+

-- empId is the column with unique values for this table.

-- Each row of this table indicates the name and the ID of an employee in addition to their salary and the id of their manager.

-- Table: Bonus

-- +-------------+------+

-- | Column Name | Type |

-- +-------------+------+

-- | empId       | int  |

-- | bonus       | int  |

-- +-------------+------+

-- empId is the column of unique values for this table.

-- empId is a foreign key (reference column) to empId from the Employee table.

-- Each row of this table contains the id of an employee and their respective bonus.

-- solution

select
    e.name,
    b.bonus
from Employee e
    left join Bonus b on e.empId = b.empId
where
    b.bonus < 1000
    or b.bonus is null;