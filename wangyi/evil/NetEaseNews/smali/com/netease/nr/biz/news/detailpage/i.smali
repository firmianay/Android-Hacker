.class Lcom/netease/nr/biz/news/detailpage/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nr/biz/news/detailpage/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/nr/biz/news/detailpage/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/util/Map;)I
    .locals 3

    const/4 v2, 0x0

    const-string v0, "all_media_list_index"

    invoke-static {p1, v0, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "all_media_list_index"

    invoke-static {p2, v1, v2}, Lcom/netease/util/e/a;->a(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/netease/nr/biz/news/detailpage/i;->a(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    return v0
.end method
