# Description:
#   Display a picture of based on build status change notification.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Author:
#   4eek

failure_images = [
  "http://4.bp.blogspot.com/-TxvauPDUHh0/UFCuSEYPiFI/AAAAAAAAD3c/SpwKc-VQadg/s320/even-this-guy-knows-you-suck.jpg",
  "http://distractedpersons.files.wordpress.com/2012/05/you-suck.jpg",
  "http://tenonesix.com/wp-content/uploads/2012/11/YouSuck.jpg",
  "http://cdn.memegenerator.net/instances/250x250/24884846.jpg",
  "http://cdn.memegenerator.net/instances/400x/19892047.jpg",
  "http://cdn.memegenerator.net/instances/400x/31207519.jpg",
  "http://cdn.memegenerator.net/instances/400x/31155749.jpg",
  "https://wiki.jenkins-ci.org/download/attachments/60916342/16116996.jpg",
  "http://www.filehurricane.com/viewerthumbnails/915200895514AM_bba2e623e8.jpg",
  "http://rlv.zcache.com/i_love_to_fail_tshirt-p235916506599376310qjdb_400.jpg"
]

success_images = [
  "http://cdn.memegenerator.net/instances/400x/28562786.jpg",
  "http://www.upstreamonline.com/migration_catalog/article1228280.ece/ALTERNATES/article_main/Green_light",
  "http://s3.amazonaws.com/thrivesmart/pictures/12/green-light.original.jpg?1233023203",
  "http://s414229972.websitehome.co.uk/img/news/news_greenlight.jpg"
]

module.exports = (robot) ->
  robot.hear /FAILURE/i, (msg) ->
    msg.send msg.random failure_images
  robot.hear /SUCCESS/i, (msg) ->
    msg.send msg.random success_images
