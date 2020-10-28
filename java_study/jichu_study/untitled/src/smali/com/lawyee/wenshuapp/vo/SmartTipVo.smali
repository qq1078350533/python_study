.class public Lcom/lawyee/wenshuapp/vo/SmartTipVo;
.super Lnet/lawyee/mobilelib/vo/BaseVO;


# instance fields
.field private s1:Ljava/lang/String;

.field private s2:Ljava/lang/String;

.field private s3:Ljava/lang/String;

.field private s4:Ljava/lang/String;

.field private s5:Ljava/lang/String;

.field private s6:Ljava/lang/String;

.field private s7:Ljava/lang/String;

.field private s8:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/lawyee/mobilelib/vo/BaseVO;-><init>()V

    return-void
.end method

.method private parseValue(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    aget-object v3, p1, v1

    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getS1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s1:Ljava/lang/String;

    return-object v0
.end method

.method public getS2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s2:Ljava/lang/String;

    return-object v0
.end method

.method public getS3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s3:Ljava/lang/String;

    return-object v0
.end method

.method public getS4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s4:Ljava/lang/String;

    return-object v0
.end method

.method public getS5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s5:Ljava/lang/String;

    return-object v0
.end method

.method public getS6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s6:Ljava/lang/String;

    return-object v0
.end method

.method public getS7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s7:Ljava/lang/String;

    return-object v0
.end method

.method public getS8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s8:Ljava/lang/String;

    return-object v0
.end method

.method public getkeyList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/lawyee/wenshuapp/vo/SuggestVO;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->a()Lcom/lawyee/wenshuapp/config/ApplicationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lawyee/wenshuapp/config/ApplicationSet;->g()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s1:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s1:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->parseValue(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v5, "s1"

    const-string v6, "\u667a\u80fd\u68c0\u7d22"

    invoke-static {v5, v6, v0}, Lcom/lawyee/wenshuapp/vo/Cls;->getTypeValue(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    move v6, v3

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    new-instance v7, Lcom/lawyee/wenshuapp/vo/SuggestVO;

    invoke-direct {v7}, Lcom/lawyee/wenshuapp/vo/SuggestVO;-><init>()V

    if-nez v6, :cond_0

    invoke-virtual {v7, v4}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setSortIndex(I)V

    :cond_0
    invoke-virtual {v7, v5}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setKey(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setValue(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s2:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s2:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->parseValue(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v5, "s2"

    const-string v6, "\u667a\u80fd\u68c0\u7d22"

    invoke-static {v5, v6, v0}, Lcom/lawyee/wenshuapp/vo/Cls;->getTypeValue(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    move v6, v3

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    new-instance v7, Lcom/lawyee/wenshuapp/vo/SuggestVO;

    invoke-direct {v7}, Lcom/lawyee/wenshuapp/vo/SuggestVO;-><init>()V

    if-nez v6, :cond_2

    invoke-virtual {v7, v4}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setSortIndex(I)V

    :cond_2
    invoke-virtual {v7, v5}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setKey(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setValue(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s3:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s3:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->parseValue(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v5, "s3"

    const-string v6, "\u667a\u80fd\u68c0\u7d22"

    invoke-static {v5, v6, v0}, Lcom/lawyee/wenshuapp/vo/Cls;->getTypeValue(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    move v6, v3

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    new-instance v7, Lcom/lawyee/wenshuapp/vo/SuggestVO;

    invoke-direct {v7}, Lcom/lawyee/wenshuapp/vo/SuggestVO;-><init>()V

    if-nez v6, :cond_4

    invoke-virtual {v7, v4}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setSortIndex(I)V

    :cond_4
    invoke-virtual {v7, v5}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setKey(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setValue(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s4:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s4:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->parseValue(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v5, "s4"

    const-string v6, "\u667a\u80fd\u68c0\u7d22"

    invoke-static {v5, v6, v0}, Lcom/lawyee/wenshuapp/vo/Cls;->getTypeValue(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    move v6, v3

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    new-instance v7, Lcom/lawyee/wenshuapp/vo/SuggestVO;

    invoke-direct {v7}, Lcom/lawyee/wenshuapp/vo/SuggestVO;-><init>()V

    if-nez v6, :cond_6

    invoke-virtual {v7, v4}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setSortIndex(I)V

    :cond_6
    invoke-virtual {v7, v5}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setKey(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setValue(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s5:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s5:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->parseValue(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v5, "s5"

    const-string v6, "\u667a\u80fd\u68c0\u7d22"

    invoke-static {v5, v6, v0}, Lcom/lawyee/wenshuapp/vo/Cls;->getTypeValue(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    move v6, v3

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    new-instance v7, Lcom/lawyee/wenshuapp/vo/SuggestVO;

    invoke-direct {v7}, Lcom/lawyee/wenshuapp/vo/SuggestVO;-><init>()V

    if-nez v6, :cond_8

    invoke-virtual {v7, v4}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setSortIndex(I)V

    :cond_8
    invoke-virtual {v7, v5}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setKey(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setValue(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s6:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s6:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->parseValue(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v5, "s6"

    const-string v6, "\u667a\u80fd\u68c0\u7d22"

    invoke-static {v5, v6, v0}, Lcom/lawyee/wenshuapp/vo/Cls;->getTypeValue(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    move v6, v3

    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    new-instance v7, Lcom/lawyee/wenshuapp/vo/SuggestVO;

    invoke-direct {v7}, Lcom/lawyee/wenshuapp/vo/SuggestVO;-><init>()V

    if-nez v6, :cond_a

    invoke-virtual {v7, v4}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setSortIndex(I)V

    :cond_a
    invoke-virtual {v7, v5}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setKey(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setValue(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_b
    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s7:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s7:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->parseValue(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v5, "s7"

    const-string v6, "\u667a\u80fd\u68c0\u7d22"

    invoke-static {v5, v6, v0}, Lcom/lawyee/wenshuapp/vo/Cls;->getTypeValue(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    move v6, v3

    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_d

    new-instance v7, Lcom/lawyee/wenshuapp/vo/SuggestVO;

    invoke-direct {v7}, Lcom/lawyee/wenshuapp/vo/SuggestVO;-><init>()V

    if-nez v6, :cond_c

    invoke-virtual {v7, v4}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setSortIndex(I)V

    :cond_c
    invoke-virtual {v7, v5}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setKey(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setValue(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_d
    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s8:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s8:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->parseValue(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v5, "s8"

    const-string v6, "\u667a\u80fd\u68c0\u7d22"

    invoke-static {v5, v6, v0}, Lcom/lawyee/wenshuapp/vo/Cls;->getTypeValue(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_f

    new-instance v5, Lcom/lawyee/wenshuapp/vo/SuggestVO;

    invoke-direct {v5}, Lcom/lawyee/wenshuapp/vo/SuggestVO;-><init>()V

    if-nez v3, :cond_e

    invoke-virtual {v5, v4}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setSortIndex(I)V

    :cond_e
    invoke-virtual {v5, v0}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setKey(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lawyee/wenshuapp/vo/SuggestVO;->setValue(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_f
    return-object v1
.end method

.method public setS1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s1:Ljava/lang/String;

    return-void
.end method

.method public setS2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s2:Ljava/lang/String;

    return-void
.end method

.method public setS3(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s3:Ljava/lang/String;

    return-void
.end method

.method public setS4(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s4:Ljava/lang/String;

    return-void
.end method

.method public setS5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s5:Ljava/lang/String;

    return-void
.end method

.method public setS6(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s6:Ljava/lang/String;

    return-void
.end method

.method public setS7(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s7:Ljava/lang/String;

    return-void
.end method

.method public setS8(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/SmartTipVo;->s8:Ljava/lang/String;

    return-void
.end method
