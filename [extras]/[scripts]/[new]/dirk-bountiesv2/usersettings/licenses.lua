Config.Licenses = {
  ['policeBountyLicense1'] = {
    Title     = "Police Bounty License",
    PassMark  = 1, 
    Item      = 'policeBountyLicense', --## Will passing this test give the player an item? If so what is the item name 
    Questions = {
      {
        question = "How many should I kill?",
        answers = {
          {answer = "1", correct = true},
          {answer = "2", correct = false},
          {answer = "3", correct = false},
          {answer = "4", correct = false},
        },
      },
      {
        question = "How many should I kill 2?",
        answers = {
          {answer = "1", correct = true},
          {answer = "2", correct = false},
          {answer = "3", correct = false},
          {answer = "4", correct = false},
        },
      },
    },
  },
  ['illegalBounties2'] = {
    Title     = "Killaz Bounty License",
    PassMark  = 1, 
    Item      = 'policeBountyLicense', --## Will passing this test give the player an item? If so what is the item name 
    Questions = {
      {
        question = "How many should I kill?",
        answers = {
          {answer = "1", correct = true},
          {answer = "2", correct = false},
          {answer = "3", correct = false},
          {answer = "4", correct = false},
        },
      },
      {
        question = "How many should I kill 2?",
        answers = {
          {answer = "1", correct = true},
          {answer = "2", correct = false},
          {answer = "3", correct = false},
          {answer = "4", correct = false},
        },
      },
      {
        question = "How many should I kill 3?",
        answers = {
          {answer = "1", correct = true},
          {answer = "2", correct = false},
          {answer = "3", correct = false},
          {answer = "4", correct = false},
        },
      },
    },
  }
}