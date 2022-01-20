class git_demo::git_demo {
  $data_participants = lookup({'name'  => 'git_demo::participants', 'merge' => { 'strategy' => deep } })

  $data_participants.each |$item| {
    notice("${item['name']}'s favorite food: ${item['favorite']}")
  }

}

include git_demo::git_demo
