.class public final enum Lt4j/TBlog$TopRetweetsType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lt4j/TBlog$TopRetweetsType;

.field public static final enum oneDay:Lt4j/TBlog$TopRetweetsType;

.field public static final enum oneHour:Lt4j/TBlog$TopRetweetsType;

.field public static final enum oneWeek:Lt4j/TBlog$TopRetweetsType;

.field public static final enum sixHours:Lt4j/TBlog$TopRetweetsType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lt4j/TBlog$TopRetweetsType;

    const-string v1, "oneHour"

    invoke-direct {v0, v1, v2}, Lt4j/TBlog$TopRetweetsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt4j/TBlog$TopRetweetsType;->oneHour:Lt4j/TBlog$TopRetweetsType;

    new-instance v0, Lt4j/TBlog$TopRetweetsType;

    const-string v1, "sixHours"

    invoke-direct {v0, v1, v3}, Lt4j/TBlog$TopRetweetsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt4j/TBlog$TopRetweetsType;->sixHours:Lt4j/TBlog$TopRetweetsType;

    new-instance v0, Lt4j/TBlog$TopRetweetsType;

    const-string v1, "oneDay"

    invoke-direct {v0, v1, v4}, Lt4j/TBlog$TopRetweetsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt4j/TBlog$TopRetweetsType;->oneDay:Lt4j/TBlog$TopRetweetsType;

    new-instance v0, Lt4j/TBlog$TopRetweetsType;

    const-string v1, "oneWeek"

    invoke-direct {v0, v1, v5}, Lt4j/TBlog$TopRetweetsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt4j/TBlog$TopRetweetsType;->oneWeek:Lt4j/TBlog$TopRetweetsType;

    const/4 v0, 0x4

    new-array v0, v0, [Lt4j/TBlog$TopRetweetsType;

    sget-object v1, Lt4j/TBlog$TopRetweetsType;->oneHour:Lt4j/TBlog$TopRetweetsType;

    aput-object v1, v0, v2

    sget-object v1, Lt4j/TBlog$TopRetweetsType;->sixHours:Lt4j/TBlog$TopRetweetsType;

    aput-object v1, v0, v3

    sget-object v1, Lt4j/TBlog$TopRetweetsType;->oneDay:Lt4j/TBlog$TopRetweetsType;

    aput-object v1, v0, v4

    sget-object v1, Lt4j/TBlog$TopRetweetsType;->oneWeek:Lt4j/TBlog$TopRetweetsType;

    aput-object v1, v0, v5

    sput-object v0, Lt4j/TBlog$TopRetweetsType;->ENUM$VALUES:[Lt4j/TBlog$TopRetweetsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lt4j/TBlog$TopRetweetsType;
    .locals 1

    const-class v0, Lt4j/TBlog$TopRetweetsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lt4j/TBlog$TopRetweetsType;

    return-object v0
.end method

.method public static values()[Lt4j/TBlog$TopRetweetsType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lt4j/TBlog$TopRetweetsType;->ENUM$VALUES:[Lt4j/TBlog$TopRetweetsType;

    array-length v1, v0

    new-array v2, v1, [Lt4j/TBlog$TopRetweetsType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
