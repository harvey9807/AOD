.class public Lcom/oneplus/aod/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final KEY_AOD_DISPLAY_MODE:Ljava/lang/String; = "aod_display_mode"

.field public static final KEY_MOTION_AWAKE:Ljava/lang/String; = "prox_wake_enabled"

.field public static final KEY_NOTIFICATION_WAKE:Ljava/lang/String; = "notification_wake_enabled"

.field private static final TAG:Ljava/lang/String; = "OPAodUtils"

.field public static final THEME_ANDROID:I = 0x2

.field public static final THEME_BLACK:I = 0x1

.field public static final THEME_WHITE:I

.field private static mIsAlwaysOnModeEnabled:Z

.field private static mIsNotificationWakeUpEnabled:Z

.field private static mMotionAwakeOn:Z

.field private static mSingleTapAwakeOn:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThemeColor(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_black_mode"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 147
    .local v0, "mode":I
    return v0
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 39
    invoke-static {p0, p1}, Lcom/oneplus/aod/Utils;->updateDozeSettings(Landroid/content/Context;I)V

    .line 40
    return-void
.end method

.method public static isAlwaysOnEnabled()Z
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAlwaysOnEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/aod/Utils;->mIsAlwaysOnModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAodUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v0, "sys.aod.localtest"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "test":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const/4 v1, 0x1

    return v1

    .line 73
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isAlwaysOnEnabledWithTimer()Z
    .locals 4

    .line 77
    const-string v0, "sys.aod.localtest.timer"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "test":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAlwaysOnEnabledWithTimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OPAodUtils"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isCustomFingerprint()Z
    .locals 3

    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x50

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isMotionAwakeOn()Z
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMotionAwakeOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/aod/Utils;->mMotionAwakeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAodUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-boolean v0, Lcom/oneplus/aod/Utils;->mMotionAwakeOn:Z

    return v0
.end method

.method public static isNotificationWakeUpEnabled()Z
    .locals 1

    .line 97
    sget-boolean v0, Lcom/oneplus/aod/Utils;->mIsNotificationWakeUpEnabled:Z

    return v0
.end method

.method public static isSingleTapEnabled()Z
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSingleTapEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/aod/Utils;->mSingleTapAwakeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAodUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-boolean v0, Lcom/oneplus/aod/Utils;->mSingleTapAwakeOn:Z

    return v0
.end method

.method public static isSingleTapEnabled(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # I

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 121
    .local v0, "gestureValue":I
    and-int/lit16 v2, v0, 0x800

    shr-int/lit8 v2, v2, 0xb

    .line 122
    .local v2, "finalValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSingleTapEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OPAodUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    :cond_0
    sput-boolean v1, Lcom/oneplus/aod/Utils;->mSingleTapAwakeOn:Z

    .line 126
    sget-boolean v1, Lcom/oneplus/aod/Utils;->mSingleTapAwakeOn:Z

    return v1
.end method

.method public static isSupportAlwaysOn()Z
    .locals 1

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportTapCoExist()Z
    .locals 3

    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x133

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isSupportXVibrate()Z
    .locals 1

    .line 151
    const-string v0, "OP_FEATURE_X_LINEAR_VIBRATION_MOTOR"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static updateAlwaysOnState(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 84
    const-string v0, "OPAodUtils"

    sget-boolean v1, Lcom/oneplus/aod/Utils;->mMotionAwakeOn:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/oneplus/aod/Utils;->isSupportAlwaysOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "aod_display_mode"

    invoke-static {v1, v4, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    sput-boolean v2, Lcom/oneplus/aod/Utils;->mIsAlwaysOnModeEnabled:Z

    .line 86
    sget-boolean v1, Lcom/oneplus/aod/Utils;->mIsAlwaysOnModeEnabled:Z

    if-eqz v1, :cond_1

    const-string v1, "0"

    goto :goto_1

    :cond_1
    const-string v1, "1"

    .line 88
    .local v1, "properties":Ljava/lang/String;
    :goto_1
    :try_start_0
    const-string v2, "sys.aod.disable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_2

    .line 89
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAlwaysOnState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/oneplus/aod/Utils;->mIsAlwaysOnModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", user = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public static updateDozeSettings(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 106
    invoke-static {p0, p1}, Lcom/oneplus/aod/Utils;->updateMotionAwakeState(Landroid/content/Context;I)V

    .line 108
    invoke-static {p0, p1}, Lcom/oneplus/aod/Utils;->updateSingleTapAwakeState(Landroid/content/Context;I)V

    .line 110
    invoke-static {p0, p1}, Lcom/oneplus/aod/Utils;->updateNotificationWakeState(Landroid/content/Context;I)V

    .line 111
    return-void
.end method

.method public static updateMotionAwakeState(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "prox_wake_enabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/oneplus/aod/Utils;->mMotionAwakeOn:Z

    .line 49
    invoke-static {p0, p1}, Lcom/oneplus/aod/Utils;->updateAlwaysOnState(Landroid/content/Context;I)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMotionAwakeState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/aod/Utils;->mMotionAwakeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAodUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public static updateNotificationWakeState(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "notification_wake_enabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/oneplus/aod/Utils;->mIsNotificationWakeUpEnabled:Z

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNotificationWakeState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/aod/Utils;->mIsNotificationWakeUpEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAodUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public static updateSingleTapAwakeState(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 58
    .local v0, "gestureValue":I
    and-int/lit16 v2, v0, 0x800

    shr-int/lit8 v2, v2, 0xb

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    :cond_0
    sput-boolean v1, Lcom/oneplus/aod/Utils;->mSingleTapAwakeOn:Z

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSingleTapAwakeState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/aod/Utils;->mSingleTapAwakeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPAodUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method
