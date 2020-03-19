class git_demo::git_demo {
  $data = lookup({'name'  => 'git_demo::participants',
                 'merge' => { 'strategy' => deep } })

  $data.each |$item| {
    notice("${item['name']}'s favorite food: ${item['favorite']}")
  }

}

include git_demo::git_demo
