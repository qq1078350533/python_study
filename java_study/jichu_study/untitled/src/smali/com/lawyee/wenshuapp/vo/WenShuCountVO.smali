.class public Lcom/lawyee/wenshuapp/vo/WenShuCountVO;
.super Lnet/lawyee/mobilelib/vo/BaseVO;


# static fields
.field private static final serialVersionUID:J = -0x54333efb45f8d64cL


# instance fields
.field private AddCount:Ljava/lang/String;

.field private PvCount:Ljava/lang/String;

.field private TotalCount:Ljava/lang/String;

.field private TypeAddCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private TypeAddViewResIds:[I

.field private TypeCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private TypeViewResIds:[I


# direct methods
.method public constructor <init>([I[I)V
    .locals 1

    invoke-direct {p0}, Lnet/lawyee/mobilelib/vo/BaseVO;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->TypeCount:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->TypeAddCount:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->TypeViewResIds:[I

    iput-object p2, p0, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->TypeAddViewResIds:[I

    return-void
.end method

.method public static getAJLXS(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAJLXSFull(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAjlx(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->getAJLXSFull(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->getAJLXS(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object p0, p0, v1

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static getAjlxFull(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->getAJLXSFull(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->getAJLXS(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object p0, v0, v1

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public getAddCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->AddCount:Ljava/lang/String;

    return-object v0
.end method

.method public getPvCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->PvCount:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->TotalCount:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeAddCount()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->TypeAddCount:Ljava/util/HashMap;

    return-object v0
.end method

.method public getTypeAddViewResId(I)I
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->TypeAddViewResIds:[I

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getTypeCount()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->TypeCount:Ljava/util/HashMap;

    return-object v0
.end method

.method public getTypeViewResIds(I)I
    .locals 2

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->TypeViewResIds:[I

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public parserVO(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "AddCount"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v2, "Count"

    const-string v3, "0"

    invoke-static {v0, v2, v3}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->setAddCount(Ljava/lang/String;)V

    :cond_2
    const-string v0, "TotalCount"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v2, "Count"

    const-string v3, "0"

    invoke-static {v0, v2, v3}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->setTotalCount(Ljava/lang/String;)V

    :cond_3
    const-string v0, "PvCount"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v2, "Count"

    const-string v3, "0"

    invoke-static {v0, v2, v3}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->setPvCount(Ljava/lang/String;)V

    :cond_4
    const-string v0, "TypeCount"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-lez v2, :cond_8

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, v3

    check-cast v4, Lcom/google/gson/JsonObject;

    const-string v5, "name"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    const-string v5, ""

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v6, "count"

    invoke-virtual {v3, v6}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {v3, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v6

    if-eqz v6, :cond_6

    check-cast v3, Lcom/google/gson/JsonObject;

    const-string v5, "Count"

    const-string v6, "0"

    invoke-static {v3, v5, v6}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_6
    iget-object v3, p0, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->TypeCount:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    const-string v0, "TypeAddCount"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_c

    move v0, v1

    :goto_2
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_c

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v3, v2

    check-cast v3, Lcom/google/gson/JsonObject;

    const-string v4, "name"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_9
    const-string v4, ""

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v5, "count"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    if-lez v5, :cond_a

    invoke-virtual {v2, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v5

    if-eqz v5, :cond_a

    check-cast v2, Lcom/google/gson/JsonObject;

    const-string v4, "Count"

    const-string v5, "0"

    invoke-static {v2, v4, v5}, Lcom/lawyee/wenshuapp/vo/WSResponseVO;->getJsonObjectStr(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_a
    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->TypeAddCount:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    return-void

    :catch_0
    move-exception p1

    const-class v0, Lcom/lawyee/wenshuapp/vo/WenShuDetailOLDVO;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lawyee/wenshuapp/util/g;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public setAddCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->AddCount:Ljava/lang/String;

    return-void
.end method

.method public setPvCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->PvCount:Ljava/lang/String;

    return-void
.end method

.method public setTotalCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->TotalCount:Ljava/lang/String;

    return-void
.end method

.method public setTypeAddCount(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->TypeAddCount:Ljava/util/HashMap;

    return-void
.end method

.method public setTypeCount(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/WenShuCountVO;->TypeCount:Ljava/util/HashMap;

    return-void
.end method
