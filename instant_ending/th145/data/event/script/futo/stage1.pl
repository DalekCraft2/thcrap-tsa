#========================================================================
#	�z�s�X�g�[���[
#	�X�e�[�W�P�@VS���
#	�ꏊ�F��D
#	�X�e�[�W�^�C�g��
#	   �u�܂��͂��̕ӂł���ˁ[�v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/futo.csv"
,LoadImageDef,"data/event/pic/ichirin.csv"

#�t�F�C�X�摜
,DefineObject,futo,-360,0,false
,DefineObject,ichirin,-360,0,true

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

,Function,"GameStory_PlayBGM(703);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,futo_label,50,360,false
,DefineObject,ichirin_label,1120,360,false

#�����\��ݒ�
,ImageDef,futo,�z�s_��1,0,0
,ImageDef,ichirin,���_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,ichirin,-1280,&#�z�s�t�F�C�X�\���J�n
,th145_Show,futo,-1280	,#�z�s�t�F�C�X�\���J�n

,SetFocus,futo		,#�������L�������w��
�����[���I\,a05x2,0,0
,ClearBalloon,futo

,SetFocus,futo		,#�������L�������w��
,ImageDef,futo,�z�s_�G1,0,0
�I�J���g�{�[����\n�D���ɗ������[�I\,a11x2,0,0
,ClearBalloon,futo

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
�]�ނƂ��낾��\,a11x2,0,0
,ClearBalloon,ichirin

#�Љ�J�b�g�\���@��ւ́u���_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,ichirin
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
���ɒ������Ȃ��\n�ǂ��x����\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,futo		,#�������L�������w��
,ImageDef,futo,�z�s_��1,0,0
���̕ӂ̒D���₷������\n�Ƃ��납��U�߂邱�Ƃɂ���\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,futo		,#�������L�������w��
,ImageDef,futo,�z�s_�]1,0,0
�����^�����ĂƂ��납��\,a11x2,0,0
,ClearBalloon,futo




,Function,"StopBGM(503);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,futo,-1280,&
,th145_Hide,ichirin,-1280,

,Function,"GameStory_PlayBattleBGM(503);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End



# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,futo,�z�s_��1,0,0
,ImageDef,ichirin,���_�]1,0,0

,th145_Show,futo,-1280	,&,#�z�s�t�F�C�X�\���J�n
,th145_Show,ichirin,-1280	,#�z�s�t�F�C�X�\���J�n

,SetFocus,ichirin
���̎p�������҂�\n�����Ă͋A��Ȃ��c�c���Ă�\,a15x3,0,0

,Function,"::StopBGM(1500);"
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# ����
# -------------------------------------------------------
:win
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,futo,�z�s_��1,0,0
,ImageDef,ichirin,���_��1,0,0

,th145_Show,futo,-1280	,&,#�z�s�t�F�C�X�\���J�n
,th145_Show,ichirin,-1280	,#�z�s�t�F�C�X�\���J�n


,SetFocus,futo		,
�ȒP�Ȃ���\n�I�J���g�{�[���͖���Ă�����\,a15x3,0,0
,ClearBalloon,futo

,SetFocus,ichirin		,
������\n����Ȏ���x��̓z�ɕ������[\,a15x3,0,0
,ClearBalloon,ichirin


,SetFocus,futo
,ImageDef,futo,�z�s_��1,0,0
����������\n���e���񂶂��\n�\���n�C�J�����ᖳ����\,a15x3,0,0
,ClearBalloon,futo





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
