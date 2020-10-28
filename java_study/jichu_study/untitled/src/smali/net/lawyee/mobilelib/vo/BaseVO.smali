.class public Lnet/lawyee/mobilelib/vo/BaseVO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x2c3485be59404501L


# instance fields
.field protected baseid:J

.field protected voCreateDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lawyee/mobilelib/vo/BaseVO;->baseid:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lnet/lawyee/mobilelib/vo/BaseVO;->voCreateDate:Ljava/util/Date;

    return-void
.end method

.method public static dataFileName(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lnet/lawyee/mobilelib/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/d"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".\tdat"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dataFileName(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p3}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lnet/lawyee/mobilelib/vo/BaseVO;->dataFileName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lnet/lawyee/mobilelib/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/d"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".dat"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dataListFileName(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lnet/lawyee/mobilelib/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/dl"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".dat"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dataListFileName(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p3}, Lnet/lawyee/mobilelib/b/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lnet/lawyee/mobilelib/vo/BaseVO;->dataListFileName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lnet/lawyee/mobilelib/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/dl"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".dat"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadVO(Ljava/lang/String;)Lnet/lawyee/mobilelib/vo/BaseVO;
    .locals 1

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v0, p0, Lnet/lawyee/mobilelib/vo/BaseVO;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/lawyee/mobilelib/vo/BaseVO;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadVOList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/e;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static saveVO(Lnet/lawyee/mobilelib/vo/BaseVO;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lnet/lawyee/mobilelib/b/e;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public static saveVOList(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lnet/lawyee/mobilelib/b/e;->a(Ljava/util/ArrayList;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lnet/lawyee/mobilelib/vo/BaseVO;->baseid:J

    check-cast p1, Lnet/lawyee/mobilelib/vo/BaseVO;

    iget-wide v4, p1, Lnet/lawyee/mobilelib/vo/BaseVO;->baseid:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public getBaseid()J
    .locals 2

    iget-wide v0, p0, Lnet/lawyee/mobilelib/vo/BaseVO;->baseid:J

    return-wide v0
.end method

.method public getDateInterval(Ljava/util/Date;)J
    .locals 2

    iget-object v0, p0, Lnet/lawyee/mobilelib/vo/BaseVO;->voCreateDate:Ljava/util/Date;

    invoke-static {p1, v0}, Lnet/lawyee/mobilelib/b/i;->a(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVoCreateDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lnet/lawyee/mobilelib/vo/BaseVO;->voCreateDate:Ljava/util/Date;

    return-object v0
.end method

.method public isEffectiveTimeData(J)Z
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0}, Lnet/lawyee/mobilelib/vo/BaseVO;->getVoCreateDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/lawyee/mobilelib/b/i;->a(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setBaseid(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lawyee/mobilelib/vo/BaseVO;->baseid:J

    return-void
.end method

.method public setBaseid(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/lawyee/mobilelib/b/b;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lawyee/mobilelib/vo/BaseVO;->baseid:J

    return-void
.end method

.method public setVoCreateDate(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Lnet/lawyee/mobilelib/b/i;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lnet/lawyee/mobilelib/vo/BaseVO;->voCreateDate:Ljava/util/Date;

    return-void
.end method

.method public setVoCreateDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lnet/lawyee/mobilelib/vo/BaseVO;->voCreateDate:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lnet/lawyee/mobilelib/b/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
