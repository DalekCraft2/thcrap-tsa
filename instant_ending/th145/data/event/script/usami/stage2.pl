#========================================================================
#	俎q�X�g�[���[
#	�X�e�[�W2�@VS���
#	�ꏊ�F�l�Ԃ̗��i��j
#	�X�e�[�W�^�C�g��
#	   �u�ŐV�̓s�s�`���v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/usami.csv"
,LoadImageDef,"data/event/pic/ichirin.csv"

#�t�F�C�X�摜
,DefineObject,usami,-360,0,false
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

,Function,"GameStory_PlayBGM(705);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,usami_label,50,360,false
,DefineObject,ichirin_label,1120,360,false

#�����\��ݒ�
,ImageDef,usami,俎q_��1,0,0
,ImageDef,ichirin,���_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,th145_Show,usami,-1280	,



,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
�����́H\,a05x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
�f�摺�݂����ȃZ�b�g��\,a11x2,0,0
,ClearBalloon,usami

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,th145_Show,ichirin,-1280,

,SetFocus,ichirin		,
,ImageDef,ichirin,���_��1,0,0
�|�b�|�b�|�|�b�|\,a11x2,0,0
,ClearBalloon,ichirin

#�Љ�J�b�g�\���@��ւ́u���_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,ichirin
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
�ށA���̐l�c�c\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,ichirin		,
,ImageDef,ichirin,���_��1,0,0
�N�H\n�������̂Ȃ��l�Ԃ�\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,
,ImageDef,ichirin,���_��1,0,0
�����⋺�������Ⴆ\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,usami		,
,ImageDef,usami,俎q_�f1,0,0
�h�L�h�L\n���̗d��������c�c\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,ichirin		,
,ImageDef,ichirin,���_��1,0,0
�|�b�|�b�|�|�b�|\,a11x2,0,0

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
���������Ă��̏΂���\n���ڂ����\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
�l�b�g�����\R[�s�s�`��|����΂Ȃ�]��\n���݂��邾�Ȃ�ā[�I\,a11x2,0,0
,ClearBalloon,usami


,Function,"StopBGM(500);",# BGM��~
#���҃t�F�C�X�P��
,th145_Hide,usami,-1280,&
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
,ImageDef,usami,俎q_��1,0,0
,ImageDef,ichirin,���_�]1,0,0

,th145_Show,usami,-1280	,&,#俎q�t�F�C�X�\���J�n
,th145_Show,ichirin,-1280	,#俎q�t�F�C�X�\���J�n

,SetFocus,ichirin
�l�b�g�������\n�ǂ������Ӗ��H\,a11x2,0,0

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
,ImageDef,usami,俎q_��1,0,0
,ImageDef,ichirin,���_��1,0,0

,th145_Show,usami,-1280	,&,#俎q�t�F�C�X�\���J�n
,th145_Show,ichirin,-1280	,#俎q�t�F�C�X�\���J�n

,SetFocus,usami		,
�{���̔��ڂ��܂Ȃ瓦���Ȃ���\n���E����Ă��܂�\,a15x3,0,0
,ClearBalloon,usami

,th145_Hide,usami,-1280,
,Function,"GameStory_1P_Out_Back();"
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,ichirin		,
���̒N�H\n�����������l�Ԃ˂�\,a11x2,0,0
,ClearBalloon,ichirin


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
