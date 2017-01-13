# Target: http://www.kegg.jp/pathway/hsa04512+2335%09pink+1277%09yellow

# Load the required package 'KEGGREST'
library(KEGGREST)

# Create the targeted url: specify a pathway and the KEGG gene ids contained in the pathway 
#                          which you wanted to be colored along with the foreground and background colors of each KEGG gene id, respectively
url<-color.pathway.by.objects(pathway.id="path:hsa04512",
                       object.id.list=c("2335", "1292","2335","3690"),
                       fg.color.list=c("pink","pink","pink","pink"),
					   bg.color.list=c("red","red","red","red"))

# Browse the created url
browseURL(url)

# Download the colored pathway image (in png format)
download.file(url,"Treat1_a.png",mode="wb")

