#========================================================================
#	�j���ۃX�g�[���[
#	�X�e�[�W2�@VS�z�s
#	�ꏊ�F���a���J�_
#	�X�e�[�W�^�C�g��
#	   �u���������S�͂Łv
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/sinmyoumaru.csv"
,LoadImageDef,"data/event/pic/futo.csv"

#�t�F�C�X�摜
,DefineObject,sinmyoumaru,-360,0,false
,DefineObject,futo,-360,0,true

,Return
# =========================================================

# �{��
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,GoSub,init				,# ���������[�`���Ăяo��

#�J�n�J�������o
,Function,GameStory_BeginCamera();
,Sleep,2,#�E�F�C�g����
,Function,"::act.fader.FadeIn(60, 0x00000000, null);"

,Function,"GameStory_PlayBGM(702);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,sinmyoumaru_label,50,360,false
,DefineObject,futo_label,1120,360,false

#�����\��ݒ�
,ImageDef,sinmyoumaru,�j����_��1,0,0
,ImageDef,futo,�z�s_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,sinmyoumaru,-1280	,&,#�j���ۃt�F�C�X�\���J�n
,th145_Show,futo,-1280	,#�j���ۃt�F�C�X�\���J�n


,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_��1,0,0
��[�������̕���受�I\n�I�J���g�{�[�����悱���[�I\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
����c�c��������āH\,a11x2,0,0
,ClearBalloon,futo

#�Љ�J�b�g�\���@�z�s�́u�z�s_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,futo
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_�]1,0,0
�����Ȃ��\n�����Ă���̂����R�����\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,futo		,
,ImageDef,futo,�z�s_��1,0,0
����Ȃ��悤��\n�C��t���Ă��邩��\n��l�ɂȂ��̂�\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_��1,0,0
�ǂ��ł�������\n�������Ɠ����ă{�[����\n�񂱂��������[�I\,a15x3,0,0
,ClearBalloon,sinmyoumaru





,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,sinmyoumaru,-1280,&
,th145_Hide,futo,-1280,

,Function,"GameStory_PlayBattleBGM(502);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,sinmyoumaru,�j����_��1,0,0
,ImageDef,futo,�z�s_�]1,0,0

,th145_Show,sinmyoumaru,-1280	,&,#�j���ۃt�F�C�X�\���J�n
,th145_Show,futo,-1280	,#�j���ۃt�F�C�X�\���J�n

,SetFocus,futo
��Ȃ���Ȃ�\n���������ē��݂Ԃ�\n�Ƃ��낾������\,a15x3,0,0

,Function,"::StopBGM(1500);"
#�R���e�j���[�����ւ̃W�����v��\��@���݂͉��Ŏ��̃X�e�[�W�ɐi��ł����߂鏈�����s���A���X�e�[�W�̍ŏ�����ĊJ���܂�
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# ����
# -------------------------------------------------------
:win
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,sinmyoumaru,�j����_��1,0,0
,ImageDef,futo,�z�s_��1,0,0

,th145_Show,sinmyoumaru,-1280	,&,#�j���ۃt�F�C�X�\���J�n
,th145_Show,futo,-1280	,#�j���ۃt�F�C�X�\���J�n

,SetFocus,sinmyoumaru		,
��[���������[\n���Ŏ��������[\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,futo		,
�{�[���͂���Ă�邪\n�����ĂȂ�����ȁH\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_�]1,0,0
�͂��͂�\,a05x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_��1,0,0
�������͓{�点�Ȃ��ƃ{�[����\n�D���Ȃ����璧������������\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,futo		,
������\n�Ȃ�Ηǂ�\,a05x2,0,0
,ClearBalloon,futo

,SetFocus,sinmyoumaru		,
,ImageDef,sinmyoumaru,�j����_��1,0,0
���Ⴀ�ˁ[\n�]���r�v���[�X�g�I\,a11x2,0,0
,ClearBalloon,sinmyoumaru


,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"

,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
