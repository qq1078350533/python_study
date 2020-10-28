.class public Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelWenshuBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean$RelWenshuVoBean;
    }
.end annotation


# instance fields
.field private RelWenshuVo:Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean$RelWenshuVoBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRelWenshuVo()Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean$RelWenshuVoBean;
    .locals 1

    iget-object v0, p0, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;->RelWenshuVo:Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean$RelWenshuVoBean;

    return-object v0
.end method

.method public setRelWenshuVo(Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean$RelWenshuVoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean;->RelWenshuVo:Lcom/lawyee/wenshuapp/vo/DocInfoVo$DocInfoVoBean$RelWenshuBean$RelWenshuVoBean;

    return-void
.end method
