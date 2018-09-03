.class public abstract Lcom/sunrise/f/ay;
.super Ljava/lang/Object;


# instance fields
.field protected g:Ljava/util/List;

.field protected h:Ljava/util/List;

.field protected i:Ljava/util/List;

.field protected j:Ljava/util/List;

.field protected k:Ljava/util/List;

.field protected l:Ljava/util/List;

.field protected m:Ljava/util/List;

.field protected n:Ljava/util/List;

.field protected o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sunrise/f/ay;->g:Ljava/util/List;

    iput-object v0, p0, Lcom/sunrise/f/ay;->h:Ljava/util/List;

    iput-object v0, p0, Lcom/sunrise/f/ay;->i:Ljava/util/List;

    iput-object v0, p0, Lcom/sunrise/f/ay;->j:Ljava/util/List;

    iput-object v0, p0, Lcom/sunrise/f/ay;->k:Ljava/util/List;

    iput-object v0, p0, Lcom/sunrise/f/ay;->l:Ljava/util/List;

    iput-object v0, p0, Lcom/sunrise/f/ay;->m:Ljava/util/List;

    iput-object v0, p0, Lcom/sunrise/f/ay;->n:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunrise/f/ay;->o:Z

    return-void
.end method


# virtual methods
.method protected a(Lcom/sunrise/f/af;Lcom/sunrise/f/i;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p5, :cond_1

    iget-object v0, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    iget-boolean v0, v0, Lcom/sunrise/f/az;->i:Z

    if-eqz v0, :cond_2

    instance-of v0, p5, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/sunrise/f/af;->j:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/sunrise/f/af;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/bd;

    invoke-interface {v0, p3, p4, p5}, Lcom/sunrise/f/bd;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/sunrise/f/i;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p5, Ljava/lang/String;

    invoke-static {p5}, Lcom/sunrise/a/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sunrise/f/ay;->j:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/bd;

    invoke-interface {v0, p3, p4, p5}, Lcom/sunrise/f/bd;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_2

    :cond_4
    iget-object v0, p1, Lcom/sunrise/f/af;->n:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/sunrise/f/af;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/t;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/sunrise/f/t;->a(Lcom/sunrise/f/i;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/sunrise/f/ay;->n:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sunrise/f/ay;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/t;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/sunrise/f/t;->a(Lcom/sunrise/f/i;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_4

    :cond_6
    return-object p5
.end method

.method public a(Lcom/sunrise/f/ax;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/sunrise/f/as;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sunrise/f/ay;->k()Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/sunrise/f/as;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    instance-of v0, p1, Lcom/sunrise/f/an;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sunrise/f/ay;->j()Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/sunrise/f/an;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    instance-of v0, p1, Lcom/sunrise/f/bd;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sunrise/f/ay;->o()Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/sunrise/f/bd;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    instance-of v0, p1, Lcom/sunrise/f/t;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sunrise/f/ay;->n()Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/sunrise/f/t;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    instance-of v0, p1, Lcom/sunrise/f/ar;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sunrise/f/ay;->m()Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/sunrise/f/ar;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    instance-of v0, p1, Lcom/sunrise/f/j;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/sunrise/f/ay;->h()Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/sunrise/f/j;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    instance-of v0, p1, Lcom/sunrise/f/c;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/sunrise/f/ay;->i()Ljava/util/List;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/sunrise/f/c;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    instance-of v0, p1, Lcom/sunrise/f/ah;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sunrise/f/ay;->l()Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/sunrise/f/ah;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/sunrise/f/af;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sunrise/f/af;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/as;

    invoke-interface {v0, p1, p2, p3}, Lcom/sunrise/f/as;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sunrise/f/ay;->l:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunrise/f/ay;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/as;

    invoke-interface {v0, p1, p2, p3}, Lcom/sunrise/f/as;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/sunrise/f/af;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sunrise/f/af;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/ar;

    invoke-interface {v0, p2, p3, p4}, Lcom/sunrise/f/ar;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sunrise/f/ay;->i:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunrise/f/ay;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/ar;

    invoke-interface {v0, p2, p3, p4}, Lcom/sunrise/f/ar;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    iget-object v0, p1, Lcom/sunrise/f/af;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sunrise/f/af;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/an;

    invoke-interface {v0, p2, p3, p4}, Lcom/sunrise/f/an;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sunrise/f/ay;->k:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunrise/f/ay;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunrise/f/an;

    invoke-interface {v0, p2, p3, p4}, Lcom/sunrise/f/an;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    return-object p3
.end method

.method public h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/ay;->g:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunrise/f/ay;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunrise/f/ay;->o:Z

    :cond_0
    iget-object v0, p0, Lcom/sunrise/f/ay;->g:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/ay;->h:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunrise/f/ay;->h:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunrise/f/ay;->o:Z

    :cond_0
    iget-object v0, p0, Lcom/sunrise/f/ay;->h:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/ay;->k:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunrise/f/ay;->k:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunrise/f/ay;->o:Z

    :cond_0
    iget-object v0, p0, Lcom/sunrise/f/ay;->k:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/ay;->l:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunrise/f/ay;->l:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunrise/f/ay;->o:Z

    :cond_0
    iget-object v0, p0, Lcom/sunrise/f/ay;->l:Ljava/util/List;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/ay;->m:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunrise/f/ay;->m:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunrise/f/ay;->o:Z

    :cond_0
    iget-object v0, p0, Lcom/sunrise/f/ay;->m:Ljava/util/List;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/ay;->i:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunrise/f/ay;->i:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunrise/f/ay;->o:Z

    :cond_0
    iget-object v0, p0, Lcom/sunrise/f/ay;->i:Ljava/util/List;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/ay;->n:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunrise/f/ay;->n:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunrise/f/ay;->o:Z

    :cond_0
    iget-object v0, p0, Lcom/sunrise/f/ay;->n:Ljava/util/List;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/f/ay;->j:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunrise/f/ay;->j:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunrise/f/ay;->o:Z

    :cond_0
    iget-object v0, p0, Lcom/sunrise/f/ay;->j:Ljava/util/List;

    return-object v0
.end method
