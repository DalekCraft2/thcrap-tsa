#========================================================================
#	俎q�X�g�[���[
#	�X�e�[�W3�@VS������
#	�ꏊ�F�l�Ԃ̗��i��j
#	�X�e�[�W�^�C�g��
#	   �u�`���̓s�s�`���v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/usami.csv"
,LoadImageDef,"data/event/pic/kokoro.csv"

#�t�F�C�X�摜
,DefineObject,usami,-360,0,false
,DefineObject,kokoro,-360,0,true

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
,DefineObject,kokoro_label,1120,360,false

#�����\��ݒ�
,ImageDef,usami,俎q_��1,0,0
,ImageDef,kokoro,������_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,kokoro,-1280,

,SetFocus,kokoro		,
,ImageDef,kokoro,������_��1,0,0
�˂������̐l�Ԃ���\n������Ƃ���������\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,kokoro		,
,ImageDef,kokoro,������_��1,0,0
�A�^�V�A�L���C�H\,a11x2,0,0
,ClearBalloon,kokoro

#�Љ�J�b�g�\���@������́u������_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,kokoro
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
���������[\,a05x2,-320,0
,ClearBalloon,usami

,Function,GameStory_1P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,th145_Show,usami,-1280	,

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
���ڂ��܂ɒǂ��Ă����ł�\n�����ĉ�����\,a15x3,0,0
,ClearBalloon,usami


,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
�c�c���ċM������T��\n�d�����Ղ�ł���\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,kokoro		,
,ImageDef,kokoro,������_��1,0,0
����������\n�ǂ������E���񂾂���\n���₷��͎̂~�߂ɂ���񂾂���\,a15x3,0,0
,ClearBalloon,kokoro

,SetFocus,kokoro		,
,ImageDef,kokoro,������_��1,0,0
�L���C���ᖳ������\n���˂��I\,a11x2,0,0
,ClearBalloon,kokoro

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
�����[�H\,a05x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
�e�p�ɂ͎��M��������������\n����Ⴀ��܂肾�[\,a15x3,0,0
,ClearBalloon,usami

,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,usami,-1280,&
,th145_Hide,kokoro,-1280,

,Function,"GameStory_PlayBattleBGM(504);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End


# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,usami,俎q_��1,0,0
,ImageDef,kokoro,������_�]1,0,0

,th145_Show,usami,-1280	,&,#俎q�t�F�C�X�\���J�n
,th145_Show,kokoro,-1280	,#俎q�t�F�C�X�\���J�n

,SetFocus,kokoro
�Ƃ���ŋM���A�N�H\,a11x2,0,0

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
,ImageDef,kokoro,������_��1,0,0

,th145_Show,usami,-1280	,&,#俎q�t�F�C�X�\���J�n
,th145_Show,kokoro,-1280	,#俎q�t�F�C�X�\���J�n


,SetFocus,usami		,
�͂��͂�\n�{���̌��􂯏������I\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
�`���ɕ������s�s�`�����\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_�f1,0,0
�l�Ԃ�����������������\n���̊X�͊댯����[\,a11x2,0,0
,ClearBalloon,usami


,th145_Hide,usami,-1280,
,Function,"GameStory_1P_Out_Back();"
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,kokoro		,
�����\n���Ɍ��􂯏��ŕ|�����Ă��ꂽ\,a15x3,0,0
,ClearBalloon,kokoro


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
