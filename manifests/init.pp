class git_demo::git_demo {
  $dataparticipant = lookup({'name'  => 'git_demo::participants', 'merge' => { 'strategy' => deep } })

  $dataparticipant.each |$item| {
    notice("${item['name']}'s favorite food: ${item['favorite']}")
  }

}

include git_demo::git_demo
