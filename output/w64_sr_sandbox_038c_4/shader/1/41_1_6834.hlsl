// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:58 2023
Buffer<float4> t2 : register(t2);

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[141];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  uint v6 : SV_VERTEXID0,
  uint v7 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD30,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v6.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v6.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.5 + -0.5;
  r0.x = round(r0.x);
  r0.y = (int)r0.x;
  r0.z = (uint)r0.y << 1;
  r0.z = (int)-r0.z + (int)v6.x;
  r0.w = (int)r0.y * 6;
  r0.w = (int)r0.w;
  r0.w = cb0[36].x + r0.w;
  r1.x = (uint)r0.w;
  r1.x = t2.Load(r1.x).w;
  r2.xyzw = float4(1,2,4,5) + r0.wwww;
  r2.xyzw = (uint4)r2.xyzw;
  r3.xyzw = t2.Load(r2.x).xyzw;
  r4.xyzw = t2.Load(r2.y).xyzw;
  r5.yzw = t2.Load(r2.z).wyz;
  r0.w = t2.Load(r2.w).x;
  r1.yzw = cb1[1].xyz * r3.yyy;
  r1.yzw = cb1[0].xyz * r3.xxx + r1.yzw;
  r1.yzw = cb1[2].xyz * r3.zzz + r1.yzw;
  r1.yzw = cb1[3].xyz + r1.yzw;
  r2.x = cmp(1 < cb0[137].x);
  if (r2.x != 0) {
    r2.x = cmp((int)r0.y < 0);
    if (r2.x != 0) {
      r2.x = cb0[36].x + 1;
      r2.x = (uint)r2.x;
      r2.xyz = t2.Load(r2.x).xyz;
    } else {
      r2.w = cb0[137].x + -1;
      r0.x = -r2.w + r0.x;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 1 + r0.x;
        r0.x = (uint)r0.x;
        r6.xyz = t2.Load(r0.x).xyz;
        r2.xyz = r3.xyz * float3(2,2,2) + -r6.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 1 + r0.x;
        r0.x = (uint)r0.x;
        r2.xyz = t2.Load(r0.x).xyz;
      }
    }
  } else {
    r2.xyz = float3(0,0,0);
  }
  r3.xyz = cb1[1].xyz * r2.yyy;
  r2.xyw = cb1[0].xyz * r2.xxx + r3.xyz;
  r2.xyz = cb1[2].xyz * r2.zzz + r2.xyw;
  r2.xyz = cb1[3].xyz + r2.xyz;
  r2.xyz = r2.xyz + -r1.yzw;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cmp(9.99999975e-006 < r0.x);
  r2.xyz = r0.xxx ? r2.xyz : float3(1,0,0);
  r3.xyz = cb12[7].yzx + -r1.zwy;
  r6.xyz = r3.xyz * r2.zxy;
  r3.xyz = r2.yzx * r3.yzx + -r6.xyz;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  r3.xyz = r3.xyz * r0.xxx;
  r0.x = (int)r0.z;
  r0.x = cmp(r0.x < 0.5);
  r0.y = frac(cb0[127].x);
  r0.y = r0.x ? cb0[126].x : r0.y;
  r0.y = 3.14100003 * r0.y;
  sincos(r0.y, r6.x, r7.x);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = rsqrt(r0.y);
  r2.xyz = r2.xyz * r0.yyy;
  r6.xyz = r6.xxx * r2.xyz;
  r7.yzw = -r6.yzx * r3.zxy;
  r8.xyz = r3.yzx * -r6.zxy + -r7.yzw;
  r0.y = dot(r3.xyz, -r6.xyz);
  r8.w = -r0.y;
  r9.xyz = r7.xxx * r3.xyz;
  r9.w = 0;
  r8.xyzw = r9.xyzw + r8.xyzw;
  r3.xyz = r8.yzx * r6.zxy;
  r3.xyz = r6.yzx * r8.zxy + -r3.xyz;
  r3.xyz = r7.xxx * r8.xyz + r3.xyz;
  r3.xyz = r8.www * r6.xyz + r3.xyz;
  r6.xyz = float3(0.0130000003,0.0130000003,0.0130000003) * r3.xyz;
  r1.yzw = r3.xyz * float3(0.0130000003,0.0130000003,0.0130000003) + r1.yzw;
  r0.y = dot(r6.xyz, r6.xyz);
  r0.y = rsqrt(r0.y);
  o1.xyz = r6.xyz * r0.yyy;
  o0.y = r0.x ? cb0[126].x : cb0[127].x;
  r5.x = 0;
  r0.xyz = r5.xxz * r4.xyz + r1.yzw;
  r6.xyzw = cb12[1].xyzw * r0.yyyy;
  r6.xyzw = cb12[0].xyzw * r0.xxxx + r6.xyzw;
  r6.xyzw = cb12[2].xyzw * r0.zzzz + r6.xyzw;
  r6.xyzw = cb12[3].xyzw + r6.xyzw;
  r1.y = cb0[140].x * cb0[15].w;
  r1.z = cmp(0.999000013 < r4.w);
  o0.z = r1.z ? 0 : r1.y;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  o0.x = r3.w;
  o0.w = r6.w;
  o3.xyz = r4.xyz;
  o3.w = r1.x;
  o4.xyzw = r5.xzxw;
  o7.xyzw = r6.xyzw;
  o6.xyz = r2.xyz;
  o5.x = r5.y;
  o5.y = r0.w;
  return;
}