#========================================================================
#	俎q�X�g�[���[
#	�X�e�[�W�P�@VS�ؐ�
#	�ꏊ�F�ٕς̐_��
#	�X�e�[�W�^�C�g��
#	   �u�悤�������z���ցv
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/usami.csv"
,LoadImageDef,"data/event/pic/kasen.csv"

#�t�F�C�X�摜
,DefineObject,usami,-360,0,false
,DefineObject,kasen,-360,0,true

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

,Function,"GameStory_PlayBGM(701);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,usami_label,50,360,false
,DefineObject,kasen_label,1120,360,false

#�����\��ݒ�
,ImageDef,usami,俎q_��1,0,0
,ImageDef,kasen,�ؐ�_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


# 2P�L�����X�e�[�W������o��
,Function,GameStory_1P_In_Under(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,ImageDef,usami,俎q_��1,0,0
,th145_Show,usami,-1280	,

,SetFocus,usami		,
�c�c��[��\,a05x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
�����������\n���z���ɒH�蒅�������[\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
���܂ňꎞ�I�ɂ���\n���荞�߂Ȃ���������\,a11x2,0,0
,ClearBalloon,usami

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
�����K��������\n���z���̃p���[�X�g�[������\n����Ώo���莩�R��\,a15x3,0,0
,ClearBalloon,usami

# ���ʖ���
,SetFocus,kasen		,
�悤�������z����\,a11x2,320,0
,ClearBalloon,kasen

# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,usami		,
,ImageDef,usami,俎q_��1,0,0
���A���O�͂��̎���\,a11x2,0,0
,ClearBalloon,usami

,ImageDef,kasen,�ؐ�_�{2,0,0
,th145_Show,kasen,-1280,

,SetFocus,kasen		,
�M���𐳎���\n���z���ɂ����҂����\,a11x2,0,0
,ClearBalloon,kasen

#�Љ�J�b�g�\���@�ؐ�́u�ؐ�_�{2�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,kasen
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"

,SetFocus,usami		,
,ImageDef,usami,俎q_�f1,0,0
�́A���������ĉ����K����\n��������̃p���[�X�g�[���c�c\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_�]1,0,0
���X�C���t���Ă��x���x��\n�K�ɉ������ꂽ�˂�\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,usami		,
,ImageDef,usami,俎q_�{1,0,0
�������A㩂������̂�\,a11x2,0,0
,ClearBalloon,usami

,Function,"StopBGM(500);",# BGM��~
,Function,"GameStory_PlayBattleBGM(512);",# �퓬BGM�Đ��J�n

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
�����M���ɋA�蓹�͖���\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
���z�����̐���𑶕���\n�󂯂�Ɨǂ��I\,a11x2,0,0
,ClearBalloon,kasen



#���҃t�F�C�X�P��
,th145_Hide,usami,-1280,&
,th145_Hide,kasen,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End



# -----------------
# �퓬����b
:main_2

,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,usami,俎q_��1,0,0
,ImageDef,kasen,�ؐ�_��1,0,0

,Sleep,5

#,Move,usami,0,-25,25	,#�t�F�C�X�摜�ʒu���g�[�N�ʒu�ɃV�t�g
,th145_Show,usami,-1280,&,#俎q�t�F�C�X�\���J�n
,th145_Show,kasen,-1280,#俎q�t�F�C�X�\���J�n

,SetFocus,kasen		,#�������L�������w��
,ImageDef,kasen,�ؐ�_��1,0,0
,th145_Show,kasen,-1280	,#&, #�ؐ�t�F�C�X�\���J�n
����A\,a11x2,0,0
,ClearBalloon,kasen

#�t�L�_�V�̈ꊇ�����@��������s����܂ŕ��o���͍ی��Ȃ���O�ɑ�����
,ClearBalloon,usami
,ClearBalloon,kasen

#���҃t�F�C�X�P��
,th145_Hide,usami,-1280,&
,th145_Hide,kasen,-1280,

,Sleep,60

,Function,"RoundStory_TalkFight();",# TODO::�΍ĊJ����

,End


# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,usami,俎q_��1,0,0
,ImageDef,kasen,�ؐ�_�]1,0,0

,th145_Show,usami,-1280	,&,#俎q�t�F�C�X�\���J�n
,th145_Show,kasen,-1280	,#俎q�t�F�C�X�\���J�n

,SetFocus,kasen
�����Ǝ���ł��܂��Ă�\n�������������\,a11x2,0,0

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
,ImageDef,kasen,�ؐ�_�]1,0,0

,th145_Show,usami,-1280	,&,#俎q�t�F�C�X�\���J�n
,th145_Show,kasen,-1280	,#俎q�t�F�C�X�\���J�n

,SetFocus,usami		,
�Ȃ�Ă�����\n�{���ɋA��Ȃ��Ȃ�Ȃ��\,a15x3,0,0
,ClearBalloon,usami

,SetFocus,kasen		,
������邪�ǂ�\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_�{1,0,0
���z���Ɉ��Z�̒n��\n����̂Ȃ�ȁI\,a11x2,0,0
,ClearBalloon,kasen

,SetFocus,usami		,
,ImageDef,usami,俎q_�f1,0,0
����\,a05x2,0,0
,ClearBalloon,usami

,th145_Hide,usami,-1280,
,Function,"GameStory_1P_Out_Back();"
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_�@1,0,0
�Ƃ܂��A���̈ʋ����Ώ\����\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
�w�^�Ɏ��Ȃ��đ����ɂȂ��\n�O�̐��E���璲����������\n���邩���m��Ȃ����Ȃ�\,a15x3,0,0
,ClearBalloon,kasen

,SetFocus,kasen		,
,ImageDef,kasen,�ؐ�_��1,0,0
���z���̕|�����\n�y����ł�����Ⴂ��\,a11x2,0,0
,ClearBalloon,kasen


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
