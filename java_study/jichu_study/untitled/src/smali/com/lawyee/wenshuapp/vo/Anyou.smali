.class public Lcom/lawyee/wenshuapp/vo/Anyou;
.super Lnet/lawyee/mobilelib/vo/BaseVO;


# static fields
.field private static final CSTR_ANYOU_ROOT:Ljava/lang/String; = "0"

.field private static final serialVersionUID:J = -0x56046ee5a2236287L


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private parentid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/lawyee/mobilelib/vo/BaseVO;-><init>()V

    return-void
.end method

.method public static findAnyouWithId(Ljava/util/List;Ljava/lang/String;)Lcom/lawyee/wenshuapp/vo/Anyou;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Anyou;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lawyee/wenshuapp/vo/Anyou;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lawyee/wenshuapp/vo/Anyou;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/Anyou;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static findAnyouWithName(Ljava/util/List;Ljava/lang/String;)Lcom/lawyee/wenshuapp/vo/Anyou;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Anyou;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lawyee/wenshuapp/vo/Anyou;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lawyee/wenshuapp/vo/Anyou;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/Anyou;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getAllAnyouWithAssets(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Anyou;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "anyou.json"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "anyou"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    const-class v3, Lcom/lawyee/wenshuapp/vo/Anyou;

    invoke-virtual {p0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lawyee/wenshuapp/vo/Anyou;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lawyee/wenshuapp/util/g;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSubList(Ljava/util/List;Lcom/lawyee/wenshuapp/vo/Anyou;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Anyou;",
            ">;",
            "Lcom/lawyee/wenshuapp/vo/Anyou;",
            ")",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Anyou;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_4

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lawyee/wenshuapp/vo/Anyou;

    const-string v2, "0"

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/Anyou;->getParentid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lawyee/wenshuapp/vo/Anyou;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/Anyou;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/lawyee/wenshuapp/vo/Anyou;->getParentid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    goto :goto_1

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    return-object v0

    :cond_8
    return-object v1

    :cond_9
    :goto_2
    return-object v0
.end method

.method public static hasSub(Ljava/util/List;Lcom/lawyee/wenshuapp/vo/Anyou;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Anyou;",
            ">;",
            "Lcom/lawyee/wenshuapp/vo/Anyou;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v3

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lawyee/wenshuapp/vo/Anyou;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/Anyou;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/lawyee/wenshuapp/vo/Anyou;->getParentid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-super {p0, p1}, Lnet/lawyee/mobilelib/vo/BaseVO;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/lawyee/wenshuapp/vo/Anyou;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/lawyee/wenshuapp/vo/Anyou;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/Anyou;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/Anyou;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/Anyou;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/Anyou;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/Anyou;->parentid:Ljava/lang/String;

    return-object v0
.end method

.method public getSubList(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Anyou;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Anyou;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/lawyee/wenshuapp/vo/Anyou;->getSubList(Ljava/util/List;Lcom/lawyee/wenshuapp/vo/Anyou;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hasSub(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Anyou;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/lawyee/wenshuapp/vo/Anyou;->hasSub(Ljava/util/List;Lcom/lawyee/wenshuapp/vo/Anyou;)Z

    move-result p1

    return p1
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/Anyou;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/Anyou;->name:Ljava/lang/String;

    return-void
.end method

.method public setParentid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/Anyou;->parentid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/Anyou;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
