.class public Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lawyee/wenshuapp/vo/DocInfoVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocInfoVoBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;
    }
.end annotation


# instance fields
.field private qwContent:Ljava/lang/String;

.field private relWenshu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;",
            ">;"
        }
    .end annotation
.end field

.field private s32:Ljava/lang/String;

.field private viewCount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQwContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;->qwContent:Ljava/lang/String;

    return-object v0
.end method

.method public getRelWenshu()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;->relWenshu:Ljava/util/List;

    return-object v0
.end method

.method public getS32()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;->s32:Ljava/lang/String;

    return-object v0
.end method

.method public getViewCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;->viewCount:Ljava/lang/String;

    return-object v0
.end method

.method public setQwContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;->qwContent:Ljava/lang/String;

    return-void
.end method

.method public setRelWenshu(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;->relWenshu:Ljava/util/List;

    return-void
.end method

.method public setS32(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;->s32:Ljava/lang/String;

    return-void
.end method

.method public setViewCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;->viewCount:Ljava/lang/String;

    return-void
.end method
