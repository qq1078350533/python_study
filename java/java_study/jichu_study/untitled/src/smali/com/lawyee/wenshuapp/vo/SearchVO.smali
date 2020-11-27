.class public Lcom/lawyee/wenshuapp/vo/SearchVO;
.super Lnet/lawyee/mobilelib/vo/BaseVO;


# static fields
.field private static CSTR_EMPTYDATA_HINT_INPUT:Ljava/lang/String; = "\u8bf7\u586b\u5199"

.field private static CSTR_EMPTYDATA_HINT_SEL:Ljava/lang/String; = "\u8bf7\u9009\u62e9"

.field public static CSTR_KEY_AJLX:Ljava/lang/String; = "\u6848\u4ef6\u7c7b\u578b"

.field public static CSTR_KEY_SPCX:Ljava/lang/String; = "\u5ba1\u5224\u7a0b\u5e8f"

.field private static final serialVersionUID:J = -0x369cc6c02012b3caL


# instance fields
.field private cls:Ljava/lang/String;

.field private date:Ljava/util/Date;

.field private key:Ljava/lang/String;

.field private level:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/SearchVO;",
            ">;"
        }
    .end annotation
.end field

.field private show:Z

.field private showname:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field private svalue:Ljava/lang/String;

.field private svalue2:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/lawyee/mobilelib/vo/BaseVO;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->level:I

    return-void
.end method

.method public static findIndexWithKey(Lcom/lawyee/wenshuapp/vo/SearchVO;Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static findSearchVOCopyWithKey(Lcom/lawyee/wenshuapp/vo/SearchVO;Ljava/lang/String;)Lcom/lawyee/wenshuapp/vo/SearchVO;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lawyee/wenshuapp/vo/SearchVO;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static findSearchVOListWithKey(Lcom/lawyee/wenshuapp/vo/SearchVO;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lawyee/wenshuapp/vo/SearchVO;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/SearchVO;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findSearchVOWithKey(Ljava/util/List;Ljava/lang/String;)Lcom/lawyee/wenshuapp/vo/SearchVO;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/SearchVO;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lawyee/wenshuapp/vo/SearchVO;"
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

    check-cast v1, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static generateSearch(Lcom/lawyee/wenshuapp/vo/SearchVO;Lcom/lawyee/wenshuapp/vo/SearchVO;Ljava/util/List;Ljava/util/List;)Lcom/lawyee/wenshuapp/vo/SearchVO;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lawyee/wenshuapp/vo/SearchVO;",
            "Lcom/lawyee/wenshuapp/vo/SearchVO;",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Anyou;",
            ">;",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Spcx;",
            ">;)",
            "Lcom/lawyee/wenshuapp/vo/SearchVO;"
        }
    .end annotation

    if-eqz p1, :cond_6

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-direct {v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;-><init>()V

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setList(Ljava/util/List;)V

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->trimAndMergeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2, p3}, Lcom/lawyee/wenshuapp/vo/SearchVO;->processStrToSVO(Lcom/lawyee/wenshuapp/vo/SearchVO;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {p2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue2()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    :cond_4
    :try_start_0
    invoke-virtual {p2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0

    :cond_5
    invoke-virtual {v0, p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setList(Ljava/util/List;)V

    return-object v0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCondition(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Cls;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/QueryCondition;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/lawyee/wenshuapp/vo/QueryCondition;

    invoke-direct {v1}, Lcom/lawyee/wenshuapp/vo/QueryCondition;-><init>()V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "cprqStart"

    invoke-virtual {v1, p1}, Lcom/lawyee/wenshuapp/vo/QueryCondition;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/lawyee/wenshuapp/vo/QueryCondition;->setValue(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue2()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Lcom/lawyee/wenshuapp/vo/QueryCondition;

    invoke-direct {p1}, Lcom/lawyee/wenshuapp/vo/QueryCondition;-><init>()V

    const-string v2, "cprqEnd"

    invoke-virtual {p1, v2}, Lcom/lawyee/wenshuapp/vo/QueryCondition;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/lawyee/wenshuapp/vo/QueryCondition;->setValue(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u5168\u6587"

    invoke-static {v2, v3, p1}, Lcom/lawyee/wenshuapp/vo/Cls;->getTypeKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSid()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Lcom/lawyee/wenshuapp/vo/QueryCondition;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue2()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/lawyee/wenshuapp/vo/QueryCondition;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v1, p1}, Lcom/lawyee/wenshuapp/vo/QueryCondition;->setValue(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getCls()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/lawyee/wenshuapp/vo/Cls;->getTypeKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object p1

    :cond_6
    invoke-virtual {v1, p1}, Lcom/lawyee/wenshuapp/vo/QueryCondition;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/lawyee/wenshuapp/vo/QueryCondition;->setKey(Ljava/lang/String;)V

    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcom/lawyee/wenshuapp/vo/QueryCondition;->isValid()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSearchVOWithAssets(Landroid/content/Context;)Lcom/lawyee/wenshuapp/vo/SearchVO;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "search.json"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v0, Lnet/lawyee/mobilelib/vo/a;

    invoke-direct {v0}, Lnet/lawyee/mobilelib/vo/a;-><init>()V

    invoke-static {p0, v0}, Lnet/lawyee/mobilelib/a/b;->b(Ljava/io/InputStream;Lnet/lawyee/mobilelib/vo/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lawyee/wenshuapp/vo/SearchVO;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShowSearchVO(Lcom/lawyee/wenshuapp/vo/SearchVO;)Lcom/lawyee/wenshuapp/vo/SearchVO;
    .locals 4

    new-instance v0, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-direct {v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;-><init>()V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->isShow()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setList(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static processStrToSVO(Lcom/lawyee/wenshuapp/vo/SearchVO;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lawyee/wenshuapp/vo/SearchVO;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Anyou;",
            ">;",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Spcx;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/lawyee/wenshuapp/vo/SearchVO;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_c

    aget-object v4, p1, v3

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    if-ge v5, v7, :cond_9

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v6}, Lcom/lawyee/wenshuapp/vo/SearchVO;->findSearchVOCopyWithKey(Lcom/lawyee/wenshuapp/vo/SearchVO;Ljava/lang/String;)Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    :goto_1
    invoke-virtual {v7, v6}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v7, v5}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue2(Ljava/lang/String;)V

    goto :goto_5

    :cond_2
    invoke-virtual {v7}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    const-string v8, "\u88c1\u5224\u65e5\u671f\u7ed3\u675f\u65f6\u95f4"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v5}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    invoke-virtual {v7}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getType()I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_6

    invoke-static {p2, v5}, Lcom/lawyee/wenshuapp/vo/Anyou;->findAnyouWithName(Ljava/util/List;Ljava/lang/String;)Lcom/lawyee/wenshuapp/vo/Anyou;

    move-result-object v6

    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u68c0\u7d22\u65f6\u672a\u80fd\u627e\u5230\u6848\u7531\uff1a"

    :goto_3
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lawyee/wenshuapp/util/g;->b(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v6}, Lcom/lawyee/wenshuapp/vo/Anyou;->getID()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_6
    invoke-virtual {v7}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getType()I

    move-result v6

    const/4 v8, 0x5

    if-ne v6, v8, :cond_3

    sget-object v6, Lcom/lawyee/wenshuapp/vo/SearchVO;->CSTR_KEY_AJLX:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/lawyee/wenshuapp/vo/SearchVO;->findSearchVOWithKey(Ljava/util/List;Ljava/lang/String;)Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_7
    const-string v6, ""

    :goto_4
    invoke-static {p3, v6, v5}, Lcom/lawyee/wenshuapp/vo/Spcx;->findSpcxWithKeyConSub(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/lawyee/wenshuapp/vo/Spcx;

    move-result-object v6

    if-nez v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u68c0\u7d22\u672a\u80fd\u627e\u5230\u5ba1\u5224\u7a0b\u5e8f\uff1a"

    goto :goto_3

    :cond_8
    invoke-virtual {v6}, Lcom/lawyee/wenshuapp/vo/Spcx;->getCode()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :goto_5
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    move-object v7, v1

    :cond_a
    :goto_6
    if-nez v7, :cond_b

    const-string v5, "\u5168\u6587\u68c0\u7d22"

    invoke-static {p0, v5}, Lcom/lawyee/wenshuapp/vo/SearchVO;->findSearchVOCopyWithKey(Lcom/lawyee/wenshuapp/vo/SearchVO;Ljava/lang/String;)Lcom/lawyee/wenshuapp/vo/SearchVO;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5, v4}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setSvalue2(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    return-object v0
.end method

.method private static trimAndMergeStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const-string v0, "  "

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_2

    const-string p0, "  "

    const-string v1, " "

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_0

    :cond_2
    return-object p0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 4

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v3}, Lcom/lawyee/wenshuapp/vo/SearchVO;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/lawyee/wenshuapp/vo/SearchVO;->setList(Ljava/util/List;)V

    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/lawyee/mobilelib/vo/BaseVO;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_b

    instance-of v0, p1, Lcom/lawyee/wenshuapp/vo/SearchVO;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lcom/lawyee/wenshuapp/vo/SearchVO;

    iget v0, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->type:I

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getType()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->list:Ljava/util/List;

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->list:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->list:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_8

    return v1

    :cond_8
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lawyee/wenshuapp/vo/SearchVO;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_a
    const/4 p1, 0x1

    return p1

    :cond_b
    :goto_1
    return v1
.end method

.method public generateCondition(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/Cls;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/QueryCondition;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getCondition(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lawyee/wenshuapp/vo/QueryCondition;

    invoke-virtual {v2}, Lcom/lawyee/wenshuapp/vo/QueryCondition;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-direct {v2, p1}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getCondition(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lawyee/wenshuapp/vo/QueryCondition;

    invoke-virtual {v3}, Lcom/lawyee/wenshuapp/vo/QueryCondition;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    return-object p1

    :cond_5
    return-object v0
.end method

.method public getCls()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->cls:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->level:I

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/SearchVO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->list:Ljava/util/List;

    return-object v0
.end method

.method public getShowname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->showname:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->sid:Ljava/lang/String;

    const/16 v2, 0xb

    :goto_0
    invoke-static {v1, v2}, Lnet/lawyee/mobilelib/b/b;->a(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->level:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->sid:Ljava/lang/String;

    const/16 v2, 0x9

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->sid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getSvalue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->svalue:Ljava/lang/String;

    return-object v0
.end method

.method public getSvalue2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->svalue2:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->type:I

    return v0
.end method

.method public getTypeStr()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/lawyee/wenshuapp/vo/SearchVO;->CSTR_EMPTYDATA_HINT_SEL:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/lawyee/wenshuapp/vo/SearchVO;->CSTR_EMPTYDATA_HINT_INPUT:Ljava/lang/String;

    :goto_1
    return-object v0
.end method

.method public isShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->show:Z

    return v0
.end method

.method public setCls(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->cls:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->date:Ljava/util/Date;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->key:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->level:I

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/SearchVO;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->list:Ljava/util/List;

    return-void
.end method

.method public setShow(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/lawyee/mobilelib/b/b;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->show:Z

    return-void
.end method

.method public setShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->show:Z

    return-void
.end method

.method public setShowname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->showname:Ljava/lang/String;

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->sid:Ljava/lang/String;

    return-void
.end method

.method public setSvalue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->svalue:Ljava/lang/String;

    return-void
.end method

.method public setSvalue2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->svalue2:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->type:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lnet/lawyee/mobilelib/b/b;->a(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue2()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u88c1\u5224\u65e5\u671f\u5f00\u59cb\u65f6\u95f4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u88c1\u5224\u65e5\u671f\u7ed3\u675f\u65f6\u95f4:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5168\u6587:"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getSvalue()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, ""

    :cond_5
    iget-object v1, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->list:Ljava/util/List;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    invoke-static {v0}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ""

    goto :goto_2

    :cond_6
    const-string v1, " "

    :goto_2
    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/SearchVO;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lawyee/wenshuapp/vo/SearchVO;

    invoke-virtual {v3}, Lcom/lawyee/wenshuapp/vo/SearchVO;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v3}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/lawyee/wenshuapp/vo/SearchVO;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    goto :goto_3

    :cond_9
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
