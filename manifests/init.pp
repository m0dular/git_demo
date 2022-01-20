class git_demo::git_demo {
  $alldata = lookup({'name'  => 'git_demo::participants',
    'merge' => { 'strategy' => deep } })

  $alldata.each |$item| {
    notice("${item['name']}'s favorite food: ${item['favorite']}")
  }

}

include git_demo::git_demo
